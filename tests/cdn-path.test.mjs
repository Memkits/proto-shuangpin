import assert from "node:assert/strict";
import { test } from "node:test";
import { checkCdnPath, checkCdnCss } from "./check-cdn-path.mjs";
const base = "https://cos-sh.tiye.me/Memkits/proto-shuangpin/pr/";
const entry = `<script src="${base}assets/main.js"></script>`;
test("accepts generated JS/CSS and existing fonts", () => {
  checkCdnPath(`${entry}<link href="${base}assets/main.css"><link href="https://cdn.tiye.me/favored-fonts/main-fonts.css">`, base);
});
test("rejects relative, production and unrelated script paths", () => {
  for (const url of ["./assets/main.js", "https://cos-sh.tiye.me/Memkits/proto-shuangpin/assets/main.js", "https://example.com/js"]) assert.throws(() => checkCdnPath(`${entry}<script src="${url}"></script>`, base));
});
test("requires entry and HTTPS base, ignores comments", () => {
  assert.throws(() => checkCdnPath("", base));
  assert.throws(() => checkCdnPath(entry, "./"));
  checkCdnPath(`${entry}<!-- <link href="http://localhost/main.css"> -->`, base);
});
test("accepts the bundled font only under the selected CSS asset prefix", () => {
  checkCdnCss(`@font-face{src:url(${base}assets/Yomogi-Regular-hash.ttf)}`, base);
});
test("rejects missing fonts and relative or production font URLs", () => {
  assert.throws(() => checkCdnCss("body{}", base));
  for (const url of ["./Yomogi-Regular.ttf", "https://cos-sh.tiye.me/Memkits/proto-shuangpin/assets/Yomogi-Regular.ttf"]) assert.throws(() => checkCdnCss(`@font-face{src:url('${url}')}`, base));
});
