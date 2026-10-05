
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

COS 使用已核对固定提交的 1.2.0 和 `public-base-url` 内置校验，不添加第二套 checker。安装器读取 `deps.cirru`，已有 `caps verify --toolchain` 核验版本，删去重复固定版本断言。串行队列保留待处理运行，整个 job 限时 15 分钟、上传步骤限时 10 分钟；不取消正在上传的运行。生产与 PR/run/attempt 前缀、字体和存储键、原服务器同步不变。

此改动只交付 COS 配置，CLI/procs 仍为正式 0.27.0，源码、依赖、锁文件、七项原业务测试不改。独立 0.28 类型迁移候选仍有共享 Respo/Reel/JS-FFI 阻塞，不能把本 PR 的 0.27 构建通过当作整个 Calcit 升级完成。

### License

MIT
