import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { store, decode_store } from "../js-out/app.schema.mjs";
import { updater } from "../js-out/app.updater.mjs";
import { comp_container, mark_vowel, markup_tone } from "../js-out/app.comp.container.mjs";
import { make_string } from "../js-out/respo.render.html.mjs";
import { component_$q_, component_tree } from "../js-out/respo.util.detect.mjs";
import { reel } from "../js-out/reel.schema.mjs";
const t = c.init_tags(["store", "base", "states", "data", "inputs", "buffer", "keyboard", "event", "click", "children", "cursor"]);
const map = c._$n__$M_;
const get = (x, key) => c.option_$o_unwrap(c.get(x, key));
const nth = (x, i) => c.option_$o_unwrap(c.nth(x, i));
function buttons(node, found = []) {
  if (component_$q_(node)) return buttons(c.option_$o_unwrap(component_tree(node)), found);
  const event = c.get(node, t.event);
  if (c.option_$o_some_$q_(event)) {
    const click = c.get(c.option_$o_unwrap(event), t.click);
    if (c.option_$o_some_$q_(click)) found.push({ label: make_string(node).replace(/<[^>]*>/g, ""), click: c.option_$o_unwrap(click) });
  }
  const children = c.get(node, t.children);
  if (c.option_$o_some_$q_(children)) for (const pair of c.option_$o_unwrap(children).toArray()) buttons(nth(pair, 1), found);
  return found;
}
function session() {
  let db = store;
  let dispatched = 0;
  const render = () => comp_container(c.assoc(c.assoc(reel, t.store, db), t.base, db));
  return {
    get db() { return db; }, get dispatched() { return dispatched; }, render,
    press(label) {
      const button = buttons(render()).find((item) => item.label === label);
      assert.ok(button, `Key ${label} exists in current keyboard`);
      button.click(null, (...args) => {
        assert.equal(args.length, 1, "Application dispatch accepts one Enum");
        dispatched++;
        db = updater(db, args[0], "fixture", 0);
      });
    },
  };
}
test("all 24 vowel tone marks and representative syllables remain correct", () => {
  const tones = ["→", "↗", "↺", "↘"];
  for (const [vowel, marks] of Object.entries({ a: "āáǎà", e: "ēéěè", i: "īíǐì", o: "ōóǒò", u: "ūúǔù", ü: "ǖǘǚǜ" }))
    tones.forEach((tone, i) => assert.equal(mark_vowel(vowel, tone), marks[i]));
  for (const [raw, expected] of [["ba→", "bā"], ["bo↗", "bó"], ["ge↺", "gě"], ["lu↘", "lù"], ["lü↗", "lǘ"], ["shang→", "shāng"], ["ben↗", "bén"], ["er↺", "ěr"], ["hao↘", "hào"], ["mei↺", "měi"], ["unmarked", "unmarked"]]) assert.equal(markup_tone(raw), expected);
});
test("initial Store Struct renders and three keys commit a syllable", () => {
  const s = session();
  assert.ok(make_string(s.render()).includes("zh"));
  s.press("b"); s.press("a"); s.press("→");
  const states = get(s.db, t.states);
  assert.ok(c._$e_(get(get(states, t.data), t.inputs), c._$L_("ba→")));
  assert.equal(c.count(get(get(get(states, t.keyboard), t.data), t.buffer)), 0);
  assert.match(make_string(s.render()), /bā/);
});
test("backspace removes buffered keys then committed input, dots do nothing", () => {
  const s = session();
  s.press("."); assert.equal(s.dispatched, 0);
  s.press("b"); s.press("a"); s.press("→");
  s.press("m"); s.press("⌫");
  assert.equal(c.count(get(get(get(s.db, t.states), t.data), t.inputs)), 1);
  s.press("⌫");
  assert.equal(c.count(get(get(get(s.db, t.states), t.data), t.inputs)), 0);
  s.press("⌫");
  assert.equal(c.count(get(get(get(s.db, t.states), t.data), t.inputs)), 0);
});
test("fullscreen key invokes actual browser boundary without dispatching", () => {
  const previous = globalThis.document;
  let called = 0;
  try {
    globalThis.document = { body: { requestFullscreen() { called++; } } };
    const s = session(); s.press("⚁");
    assert.equal(called, 1); assert.equal(s.dispatched, 0);
  } finally { globalThis.document = previous; }
});
test("storage decoder supports legacy maps and saved Structs and rejects malformed states", () => {
  const legacy = map(t.states, map(t.cursor, c._$L_()));
  assert.ok(c._$e_(decode_store(legacy), store));
  assert.ok(c._$e_(decode_store(c.parse_cirru_edn(c.format_cirru_edn(store))), store));
  for (const invalid of ["not a store", map(), map(t.states, "not states"), map(t.states, map("invalid string key", "value"))]) assert.throws(() => decode_store(invalid));
});
