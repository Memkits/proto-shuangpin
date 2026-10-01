
Proto Shuangpin
----

> what if we have virtual keyboard for Chinese Input.

Demo http://r.tiye.me/Memkits/shuangpin/ .

### Usages

_TODO_

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use Calcit/procs 0.27.0, `caps --ci --strict`, `yarn install --immutable`,
`yarn build`, and `node --test tests/*.test.mjs`. Only `calcit.cirru` and
`deps.cirru` are canonical; CI rejects retired `compact.cirru` / `package.cirru`.
Public upload verification uses cos-upload-action's built-in verify settings,
with no extra CDN checker. The original server
deployment path and shared external fonts are unchanged. Regression tests
cover keyboard input, tones and isolated persistence without accessing user data.

`yarn dev` compiles once before starting Vite. For live Calcit edits, run
`calcit calcit.cirru js -w` in another terminal; no extra process manager is
needed. Builds use `VITE_BASE_URL`, with relative URLs by default. PR previews
use `pr/<number>/<run-id>/<attempt>/` to isolate uploads between runs; production
keeps the existing prefix. COS action verification replaces the standalone CDN
build test; keyboard and persistence business tests remain unchanged.

### License

MIT
