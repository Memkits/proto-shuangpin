import assert from "node:assert/strict";
import { readFileSync } from "node:fs";
import { pathToFileURL } from "node:url";
export function checkCdnPath(html, base) {
  assert.ok(base?.startsWith("https://") && base.endsWith("/"));
  const active = html.replace(/<!--[\s\S]*?-->/g, "");
  const scripts = [...active.matchAll(/<script\b[^>]*\bsrc=["']([^"']+)["']/gi)].map((match) => match[1]);
  const styles = [...active.matchAll(/<link\b[^>]*\bhref=["']([^"']+)["']/gi)].map((match) => match[1]).filter((url) => /\.css(?:[?#]|$)/.test(url));
  assert.ok(scripts.some((url) => url.startsWith(`${base}assets/`) && /\.js(?:[?#]|$)/.test(url)), "Missing generated JavaScript entry");
  for (const asset of [...scripts, ...styles]) {
    if (asset === "https://cdn.tiye.me/favored-fonts/main-fonts.css") continue;
    assert.ok(asset.startsWith(`${base}assets/`), `Wrong generated asset prefix: ${asset}`);
    assert.equal(new URL(asset).pathname, new URL(asset).pathname.replace(/\/\//g, "/"));
  }
  return styles.filter((url) => url.startsWith(`${base}assets/`));
}
export function checkCdnCss(css, base) {
  const assets = [...css.matchAll(/url\(\s*["']?([^\s"')]+)["']?\s*\)/g)].map((match) => match[1]);
  assert.ok(assets.some((url) => /Yomogi-Regular[^/]*\.ttf$/.test(url)), "Missing bundled Yomogi font");
  for (const asset of assets) {
    assert.ok(asset.startsWith(`${base}assets/`), `Wrong CSS resource prefix: ${asset}`);
    assert.equal(new URL(asset).pathname, new URL(asset).pathname.replace(/\/\//g, "/"));
  }
}
// Check local generated HTML only; remote verification stays inside the action.
if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  const base = process.env.VITE_BASE_URL;
  const styles = checkCdnPath(readFileSync("dist/index.html", "utf8"), base);
  for (const css of styles) checkCdnCss(readFileSync(`dist/${css.slice(base.length)}`, "utf8"), base);
  console.log("Generated HTML and CSS/font resources use the selected CDN prefix");
}
