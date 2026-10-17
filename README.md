
Proto Shuangpin
----

> what if we have virtual keyboard for Chinese Input.

Demo http://r.tiye.me/Memkits/shuangpin/ .

### Usages

_TODO_

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use paired Calcit/procs 0.30.1-alpha.4 (a compiler prerelease, not stable 0.30.1),
`caps --ci --strict`, `yarn install --immutable`,
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

COS 使用精确正式 tag v1.2.0 和 `public-base-url` 内置校验，不添加第二套 checker。安装器读取 `deps.cirru`，已有 `caps verify --toolchain` 核验版本。串行队列保留待处理运行，整个 job 限时 15 分钟、上传步骤限时 10 分钟；不取消正在上传的运行。生产与 PR/run/attempt 前缀、字体和存储键、原服务器同步不变。

本轮使用正式 Respo 0.16.122、UI 0.7.41、Reel 0.6.39 和 JS-FFI 0.2.3。
Store 保留真实 Struct；旧 Map 别名 Reel 改为 `State<Op, Store>`，输入与 buffer
按真实结构检查，缓存和保存内容继续保持原 Map 字段形状。缺失查询显式处理 Option，
不再用 assert-type 代替检查。全屏请求复用 JS-FFI 现有接口，仍不等待 Promise；
正则处理的 String/RegExp 宿主边界保留，声调表和键盘算法不改。

原七项业务测试及断言保留，仅适配正式 typed Reel、ChildPair 和 Storage 夹具；
不增加测试矩阵、runner 或验证脚本。CI 检查全部定义、公开命名空间、完整 strict、
原测试与构建，删除已不使用的旧数量质量基线。存储仍使用 proto-shuangpin 和原
beforeunload/60 秒周期；不改原后端或生产部署路径。合并仍会部署前端，需要单独批准。

已知原算法限制：iu/ui 等复韵母可能标错声调位置，见 [#11](https://github.com/Memkits/proto-shuangpin/issues/11)。
本轮保留算法，七项回归通过不代表所有拼音组合均已符合标调规范。

### License

MIT
