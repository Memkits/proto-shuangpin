import assert from "node:assert/strict";
import { test } from "node:test";
import { registerHooks } from "node:module";
import * as c from "../js-out/calcit.core.mjs";
import { decode_store, store } from "../js-out/app.schema.mjs";
const documentDescriptor = Object.getOwnPropertyDescriptor(globalThis, "document");
const element = { fixture: "actual mount target" };
Object.defineProperty(globalThis, "document", { configurable: true, value: {
  querySelector(selector) { assert.equal(selector, ".app"); return element; },
  createElement(tag) {
    assert.equal(tag, "canvas");
    return { getContext(kind) { assert.equal(kind, "2d"); return { measureText(text) { return { width: text.length * 8 }; } }; } };
  },
} });
const hooks = registerHooks({ resolve(specifier, context, nextResolve) {
  return nextResolve(specifier === "virtual-dom/create-element" ? "virtual-dom/create-element.js" : specifier, context);
} });
let main;
try { main = await import("../js-out/app.main.mjs"); }
finally {
  hooks.deregister();
  if (documentDescriptor) Object.defineProperty(globalThis, "document", documentDescriptor);
  else delete globalThis.document;
}
test("main exports the actual selected element rather than a List", () => {
  assert.equal(main.mount_target, element);
});
test("actual persistence saves a Store that can be restored without decoding Struct as Map", () => {
  const previousWindow = globalThis.window;
  const storageDescriptor = Object.getOwnPropertyDescriptor(globalThis, "localStorage");
  const writes = [];
  try {
    const storage = { setItem(key, value) { writes.push([key, value]); } };
    globalThis.window = { localStorage: storage };
    Object.defineProperty(globalThis, "localStorage", { configurable: true, value: storage });
    main.persist_storage_$x_();
    assert.equal(writes.length, 1);
    assert.equal(writes[0][0], "proto-shuangpin");
    assert.ok(c._$e_(decode_store(c.parse_cirru_edn(writes[0][1])), store));
  } finally {
    globalThis.window = previousWindow;
    if (storageDescriptor) Object.defineProperty(globalThis, "localStorage", storageDescriptor);
    else delete globalThis.localStorage;
  }
});
