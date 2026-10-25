
Proto Shuangpin
----

> what if we have virtual keyboard for Chinese Input.

Demo http://r.tiye.me/Memkits/shuangpin/ .

### Usages

_TODO_

### 本轮使用者影响：正式 Calcit 0.30.1

CLI/procs 配对正式 **0.30.1**，依赖固定为已发布的 Reel 0.6.42、UI 0.8.1、Respo 0.16.126、
JS-FFI 0.2.6，Router 0.8.38 为传递依赖。请重新安装完整图、生成 JS 并刷新，不混用旧 alpha 缓存；
UI 升级可能有样式差异，不承诺逐像素相同。

修复存档恢复顺序：先读取/解析/解码/hydrate，再首次渲染和关闭/周期保存注册；恢复失败会阻止启动，
不自动清空/回退/吞错，见 [#13](https://github.com/Memkits/proto-shuangpin/issues/13)。
键盘布局、三阶段输入/退格、标调算法、存档 key/协议、全屏接口和原七项回归不变。
已有标调限制 #11 仍存在，不用版本升级或测试通过冒称已修复。
迁移实际旧 Option/Map 调用，已知 List 使用 `.len`，字面量分支用 `match` 并保持原默认分支。
样式值按原 Respo 转换规则改为等价 String，使键盘样式收紧为 `Map<Tag, String>`；不改布局尺寸。
保留真实 `hud!` 成功/失败展示，不替换成 raise。String.replace 的四处 primitive String
适配和 RegExp 构造的一处宿主信任边界仍保留，不能对 primitive 使用 `js-cast` 假装清零；
正则捕获、回调、首个匹配语义和既有标调限制不变，共享适配需求见 JS-FFI #183。
保留 all-defs/完整 strict 和原七项测试，不新增脚本、强转、预算或 concurrently。
COS 仅用 action 内置 verify，前端部署路径不变；不合并、部署或发版。

本轮官方 Linux 0.30.1 事务 CI 在改写前后均通过原 Node 七项测试（0 失败、0 跳过），
all-defs 与完整 strict 通过。项目没有附着测试，不把空选择当作额外测试成功。
同一 CI 静态产物在全新 localhost 实测三阶段输入 `b/a/→`、`bā` 显示及刷新恢复、
再次输入/退格缓冲，控制台无 warning/error。没有实测全屏、60 秒定时器、HMR 或
本轮坏存档流程；全屏调用和存档合同仍有原 Node 回归覆盖，不宣称全部拼音组合正确。

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use paired Calcit/procs 0.30.1, Node 24 / Yarn 4.18.0 / Vite 8.3.3,
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

Store 保留真实 Struct；旧 Map 别名 Reel 改为 `State<Op, Store>`，输入与 buffer
按真实结构检查，缓存和保存内容继续保持原 Map 字段形状。缺失查询显式处理 Option，
不再用 assert-type 代替检查。全屏请求复用 JS-FFI 现有接口，仍不等待 Promise；
正则处理的 String/RegExp 宿主边界保留，声调表和键盘算法不改。

原七项业务测试及断言、typed Reel、ChildPair 和 Storage 夹具保持；
不增加测试矩阵、runner 或验证脚本。CI 检查全部定义、公开命名空间、完整 strict、
原测试与构建，删除已不使用的旧数量质量基线。存储仍使用 proto-shuangpin 和原
beforeunload/60 秒周期；不改原后端或生产部署路径。合并仍会部署前端，需要单独批准。

已知原算法限制：iu/ui 等复韵母可能标错声调位置，见 [#11](https://github.com/Memkits/proto-shuangpin/issues/11)。
本轮保留算法，七项回归通过不代表所有拼音组合均已符合标调规范。

### License

MIT
