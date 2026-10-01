import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { test } from "node:test";

const dist = new URL("../dist/", import.meta.url);

test("built HTML loads its generated assets from the selected CDN path", () => {
  const base = process.env.VITE_BASE_URL;
  assert.ok(base?.startsWith("https://"), "build with VITE_BASE_URL before testing");
  const html = readFileSync(new URL("index.html", dist), "utf8");
  const urls = [...html.matchAll(/(?:src|href)="([^"]+)"/g)]
    .map((match) => match[1])
    .filter((url) => url.includes("assets/"));
  assert.ok(urls.some((url) => url.endsWith(".js")), "built HTML must reference generated JavaScript");
  for (const url of urls) {
    assert.ok(url.startsWith(`${base}assets/`), `${url} must use ${base}`);
    assert.ok(existsSync(new URL(url.slice(base.length), dist)), `${url} must exist in dist`);
  }
});

test("bundled Yomogi font uses the selected CDN path", () => {
  const base = process.env.VITE_BASE_URL;
  assert.ok(base?.startsWith("https://"));
  const html = readFileSync(new URL("index.html", dist), "utf8");
  const cssUrl = [...html.matchAll(/href="([^"]+\.css)"/g)]
    .map((match) => match[1]).find((url) => url.includes("assets/"));
  assert.ok(cssUrl?.startsWith(`${base}assets/`));
  const css = readFileSync(new URL(cssUrl.slice(base.length), dist), "utf8");
  const fontUrl = css.match(/url\(([^)]+Yomogi[^)]+\.ttf)\)/)?.[1];
  assert.ok(fontUrl?.startsWith(`${base}assets/`));
  assert.ok(existsSync(new URL(fontUrl.slice(base.length), dist)));
});
