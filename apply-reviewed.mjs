import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:48e6,stdio:['ignore','pipe','pipe']});
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
assert.equal(blob(),'ce81e3ae9118e230bc086937f77106b2d001717d');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const input=JSON.parse(readFileSync('reviewed.json','utf8'));
const before={config:norm(input.config.data),namespaces:input.namespaces.map(x=>norm(x.data)),defs:input.definitions.map(x=>norm(x.data))};
assert.equal(before.defs.length,33);assert.equal(before.defs.reduce((n,d)=>n+d.tests.length,0),0);assert.equal(before.defs.reduce((n,d)=>n+d.examples.length,0),0);
assert.deepEqual(q('config'),before.config);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);
for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
const expected=structuredClone(before),ops=[],sites=[],counts={merge:0,'option:unwrap-or':0,count:0,'case-default':0,css:0};
const show=(id,path)=>JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree;
const replace=(id,path,value)=>ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(value)]);
const cssKeys=new Set([':padding',':font-size',':width',':height',':cursor',':user-select']);
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote','comment',';','defmacro'].includes(x[0]))return x;
  const original=structuredClone(x);
  if(x[0]==='{}')for(let j=1;j<x.length;j++){
    const pair=x[j];if(!Array.isArray(pair)||pair.length!==2||!cssKeys.has(pair[0]))continue;
    const [k,v]=pair;let next;
    if(/^\d+$/.test(v))next='|'+v+'px';
    else if(v===':pointer'||v===':none')next='|'+v.slice(1);
    if(next!==undefined){assert.ok(['app.comp.container/comp-container','app.comp.container/comp-keyboard','app.comp.container/style-keystroke'].includes(id));const p=[...path,j,1];assert.equal(show(id,p),v);replace(id,p,next);pair[1]=next;counts.css++;sites.push({id,path:p,property:k,before:v,after:next});}
  }
  if(['merge','option:unwrap-or','count'].includes(x[0])){
    const old=x[0];assert.deepEqual(show(id,path),original);counts[old]++;
    if(old==='count'){assert.equal(id,'app.comp.container/comp-keyboard');assert.ok(['buffer','chunk'].includes(x[1]));}
    const head={merge:'.merge','option:unwrap-or':'.unwrap-or',count:'.len'}[old];
    replace(id,[...path,0],head);x[0]=head;sites.push({id,path,original});
  }
  x=x.map((v,i)=>walk(v,[...path,i],id));
  if(x[0]==='case-default'){
    assert.equal(id,'app.comp.container/comp-keyboard');assert.deepEqual(show(id,path),original);
    assert.ok(x.slice(3).every(p=>Array.isArray(p)&&p.length===2&&/^(?:\d+|\|.*)$/.test(p[0])));
    x=['match',x[1],...x.slice(3),['_',x[2]]];replace(id,path,x);counts['case-default']++;sites.push({id,path,original});
  }
  return x;
}
for(const d of expected.defs)d.code=walk(d.code,[],d.id);
assert.deepEqual(counts,{merge:6,'option:unwrap-or':1,count:2,'case-default':2,css:11});
const style=expected.defs.find(d=>d.id==='app.comp.container/style-keystroke');
assert.deepEqual(style.schema,['::',"'Map","'Tag","'Dynamic"]);
style.schema=['::',"'Map","'Tag","'String"];
ops.push(['edit','schema',style.id,'--input-format','json-ast','--code',JSON.stringify(style.schema)]);
assert.equal(ops.length,23);
for(const id of ['app.main/main!','app.main/reload!','app.main/persist-storage!','app.comp.container/make-regex','app.comp.container/markup-tone','app.comp.container/mark-vowel','app.comp.container/StringHost','app.comp.container/RegexHost'])assert.deepEqual(expected.defs.find(d=>d.id===id),before.defs.find(d=>d.id===id));
mkdirSync('acceptance',{recursive:true});
for(const [name,value]of Object.entries({before,expected,sites,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:expected.defs.map(d=>q('def',d.id))};assert.deepEqual(after,expected);
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
writeFileSync('acceptance/summary.json',JSON.stringify({definitions:33,tests:0,examples:0,operations:23,counts,unsafeBefore:5,unsafeAfter:5,preserved:'Full untouchedviews/test/example/ns/config/metadata,actualHUD/main/persist,layout/input/backspace/algorithm/regexcallback/storageprotocol. Literalcase-default->match with originaldefault last. String/RegExp narrowhosttrust remains, no fakejs-cast zeroing. OriginalNode7 assertions unchanged;noattachedtestempty-passclaim.'},null,2));
