## [v1.3.0](https://github.com/Charles7c/continew-admin/compare/v1.2.0...v1.3.0) (2023-11-04)

### ✨ 新特性

* 消息管理：提供消息查看、标记已读、全部已读、删除等功能（适配对接导航栏站内信功能）
* 新增头像上传前裁剪功能 ([Gitee#5](https://gitee.com/Charles7c/continew-admin/pulls/5)) ([cbc652d](https://gitee.com/Charles7c/continew-admin/commit/cbc652de77200d29bcd42bb399c86c2e7df29c4d)) ([28f4791](https://gitee.com/Charles7c/continew-admin/commit/28f4791833060469d132c4383665e81458f9c852))
* 支持手机号登录（演示环境不开放） ([4d70bc8](https://github.com/Charles7c/continew-admin/commit/4d70bc84db47c36c13d8e41e3a33e5a589483de8))
* 支持邮箱登录 ([17b169e](https://github.com/Charles7c/continew-admin/commit/17b169eb0ea2ded759b6bccb213c78bfb3425941))
* 个人中心-安全设置，支持绑定、解绑三方账号 ([efe4557](https://github.com/Charles7c/continew-admin/commit/efe455736c158e73bf0c6514c31bec5d83fe843b))
* 支持第三方账号登录 ([05cb609](https://github.com/Charles7c/continew-admin/commit/05cb60978017edbd14f1c7af83053f8a91800b5c))

### 💎 功能优化

- 新增接口文档菜单，演示环境开放接口文档 ([4a42336](https://github.com/Charles7c/continew-admin/commit/4a4233647f2ea212b007f591aafc50380b15c099))
- 项目配置增加是否为生产环境配置项 ([38deb95](https://github.com/Charles7c/continew-admin/commit/38deb950ac7b2ed81f0e10816e943156aa076795))
- 优化校验相关方法命名 ([f25de2d](https://github.com/Charles7c/continew-admin/commit/f25de2d7f835a3fa75d59d3de0a014c37b3b32e1))
- 新增全局响应结果处理器 ([Gitee#3](https://gitee.com/Charles7c/continew-admin/pulls/3)) ([992a8fc](https://gitee.com/Charles7c/continew-admin/commit/992a8fca173ea76722b388aca462cff8a1128803)) ([Gitee#4](https://gitee.com/Charles7c/continew-admin/pulls/4)) ([a0b1afc](https://gitee.com/Charles7c/continew-admin/commit/a0b1afc546657766cb6031794b98ccc2b6e4cb2d))
- 优化部分代码格式及注释 ([3a176ac](https://github.com/Charles7c/continew-admin/commit/3a176ac5efbda4aea1e883b29e68861bd352d642))
- 重构登录页面 UI 以适配多维度认证、第三方登录等场景 ([d40d5b4](https://github.com/Charles7c/continew-admin/commit/d40d5b4ae61d858fbee3ffa0606ebebb4282d9a2)) ([a5a4cd4](https://github.com/Charles7c/continew-admin/commit/a5a4cd49646db3fa1108a8b917ef70c7757e81ad))
- 升级前端依赖 ([698a725](https://github.com/Charles7c/continew-admin/commit/698a7251b742e6b679694f21bfc174904dca8990))
  - Arco Design Vue 2.51.0 => 2.52.0
  - vue-i18n 9.2.2 => 9.5.0
  - dayjs 1.11.9 => 1.11.10

- 升级后端依赖 ([698a725](https://github.com/Charles7c/continew-admin/commit/698a7251b742e6b679694f21bfc174904dca8990))
  - Spring Boot 2.7.15 => 2.7.16
  - Sa-Token 1.35.0.RC => 1.36.0
  - Hutool 5.8.20 => 5.8.22


### 🐛 问题修复

- 开放前端项目IP访问 ([22a291d](https://github.com/Charles7c/continew-admin/commit/22a291d4cf48e33dc2415e44b5d991b46451e7eb))
- 修复获取验证码倒计时显示 ([2f2905e](https://github.com/Charles7c/continew-admin/commit/2f2905efdc0baec2f2c38f686f72306394801ebf))
- 用户邮箱信息增加脱敏处理 ([5bb35a1](https://github.com/Charles7c/continew-admin/commit/5bb35a13d6b5801317a295eacc67d88b2c3e1682))
- 修复重载校验方法定义及使用错误 ([a1ccc42](https://github.com/Charles7c/continew-admin/commit/a1ccc421c440e5fef54e5d22b9bed26d2b16dda5))
- 修复个人中心密码设置状态显示错误的问题 ([b04a228](https://github.com/Charles7c/continew-admin/commit/b04a228a1a5bc0a575dd9e29e515285708b8ca85))
- 修复登录后访问首页却跳转到登录页面的问题 ([Fixes #23](https://github.com/Charles7c/continew-admin/issues/23)) ([7cf5e00](https://github.com/Charles7c/continew-admin/commit/7cf5e0018c87720303f731317b5eb3cb7d127327))
- 修复字典名称表单校验 ([#22](https://github.com/Charles7c/continew-admin/pull/22)) ([c0ee2ea](https://github.com/Charles7c/continew-admin/commit/c0ee2eac026d2d5a950a41b6f0a475b95b71d47a))

### 💥 破坏性变更

- 调整后端请求、响应参数模型命名风格 ([87f9056](https://github.com/Charles7c/continew-admin/commit/87f90567dbd99f873aea1b85510c7b9939a2abb8))
- 枚举接口 BaseEnum => IBaseEnum ([f5e8b09](https://github.com/Charles7c/continew-admin/commit/f5e8b0943c6076c476b7d78bb623707740fb452f))
- 优化前端登录模块 API 路径 ([43590bf](https://github.com/Charles7c/continew-admin/commit/43590bf66e7e4873a85bdd416bd38b269f3af80e))
- 优化后端部分参数模型命名 ([51f5528](https://github.com/Charles7c/continew-admin/commit/51f552892ccb11ed594bf908069a1fd426324b69))
- 优化个人中心路由地址 ([36d52d3](https://github.com/Charles7c/continew-admin/commit/36d52d3e1522cd221cf3f03d76efd3e0eaf1b18f))
- 还原前端 loginStore 命名，重命名为 userStore ([8d39493](https://github.com/Charles7c/continew-admin/commit/8d394937cfc8418799215bd3659d26bed1f834c5))

## [v1.2.0](https://github.com/Charles7c/continew-admin/compare/v1.1.2...v1.2.0) (2023-09-24)

### ✨ 新特性

* 字典管理：提供对系统公用数据字典的维护，例如：公告类型，支持字典标签背景色和排序等配置
* 系统配置：提供修改系统标题、Logo、favicon 等基础配置功能，以方便用户系统与其自身品牌形象保持一致
* 完善仪表盘最近访问区块内容 ([36fda57](https://github.com/Charles7c/continew-admin/commit/36fda57d499b0c3fb092a13f269bc9ffb7a26a9e))
* 完善仪表盘访问趋势区块内容 ([a1c20af](https://github.com/Charles7c/continew-admin/commit/a1c20afb1b9eb447f62bfd2e4f2996dfdf37c8ca)) ([1722133](https://github.com/Charles7c/continew-admin/commit/1722133ac4872b40d6d47f65f359dea8a354b91a))
* 完善仪表盘访客地域分布区块内容 ([dc1691f](https://github.com/Charles7c/continew-admin/commit/dc1691f0195ef6c96aee36f50fc7e86cfcf651b9))
* 完善仪表盘热门模块区块内容 ([83b2e2a](https://github.com/Charles7c/continew-admin/commit/83b2e2a7c02d38c7041497e0ac5b3b0e78abac29))
* 完善仪表盘总计区块内容 ([3440aa4](https://github.com/Charles7c/continew-admin/commit/3440aa4faa23e267735f564476d8bccaf8c0208f))
* 完善仪表盘快捷操作区块内容 ([0178fbb](https://github.com/Charles7c/continew-admin/commit/0178fbb89a0e75729aa60443a812496bd5b19cb8))

### 💎 功能优化

- 前端表单重置优化 ([e947312](https://github.com/Charles7c/continew-admin/commit/e947312f244d6af01f18b542ff7395440c68b089))
- 优化登录和菜单加载相关提示 ([d080120](https://github.com/Charles7c/continew-admin/commit/d080120d4228e77200d8f152397b0ebee413b089))
- 完善前后端校验 ([90d825a](https://github.com/Charles7c/continew-admin/commit/90d825a02fdc54e8685508a6fe4fb2d5f20e77f4)) ([8e506dc](https://github.com/Charles7c/continew-admin/commit/8e506dc6e69529627a0aace6118f7310cc2f030a))
- 优化枚举字典处理，增加颜色类型 ([1f73aa7](https://github.com/Charles7c/continew-admin/commit/1f73aa732d101c7f7a58bc678e85d597d54d9770))
- 公告类型适配字典数据 ([3a3a5d6](https://github.com/Charles7c/continew-admin/commit/3a3a5d6b712f435d77ea04301afa0bdd8703567f))
- 优化通用查询注解多字段模糊查询 ([3758107](https://github.com/Charles7c/continew-admin/commit/375810772aa8cb928fb1f6820e781cb43f869e03))
- 合并菜单管理图标和标题列 ([36d38ae](https://github.com/Charles7c/continew-admin/commit/36d38aec1602f5ac6d2afbb5c5adf4d6e455ab97))
- 封装 Spring Boot 默认错误处理 ([b874ca0](https://github.com/Charles7c/continew-admin/commit/b874ca0782eb116bdedfc08023959a977f170a94))
- 优化分页查询登录日志列表接口实现 ([566c9a1](https://github.com/Charles7c/continew-admin/commit/566c9a122453980b585bd68442bb545073504a3d))
- 更换登录页面 banner ([6f19660](https://github.com/Charles7c/continew-admin/commit/6f19660cfbc3be6e0d702e3f488e266c50622f0a))
- 优化登录用户信息角色相关信息命名 ([be394f3](https://github.com/Charles7c/continew-admin/commit/be394f3de4ea7ea692042db3556f706a3d141b51)) ([31f0abb](https://github.com/Charles7c/continew-admin/commit/31f0abbae2e38d1cfa3f6221c9be0b54cf5337ad))
- 升级前端依赖 ([c665902](https://github.com/Charles7c/continew-admin/commit/c6659020f8bac7319c5c407389cd745527a8cd97))
- 升级后端依赖 ([5049e1e](https://github.com/Charles7c/continew-admin/commit/5049e1e312ab500e284abccbbee4186db2710d01)) ([d20aadf](https://github.com/Charles7c/continew-admin/commit/d20aadfc93b54339d19d173fce364310e90b016d)) ([32904b5](https://github.com/Charles7c/continew-admin/commit/32904b54ef63536ef5c5106adc00a7376b907632))

### 🐛 问题修复

- 修复删除列表数据后 Select 选择框重置问题 ([#21](https://github.com/Charles7c/continew-admin/pull/21)) ([3288f2d](https://github.com/Charles7c/continew-admin/commit/3288f2d38dfebc1381842d67cdfb17675c786859))
- 修复前端部分拼写错误 ([62021f8](https://github.com/Charles7c/continew-admin/commit/62021f8fdc171ad04d07c25c5a9357a64cc4a087))

### 💥 破坏性变更

- 优化系统内置类型数据标识 ([8a02401](https://github.com/Charles7c/continew-admin/commit/8a02401a24b546f2a6aab04cf05371ecb4236ca0))
- 分离 HTTP 状态码和业务状态码 ([b3b6446](https://github.com/Charles7c/continew-admin/commit/b3b6446433972422cf62dfc47c031134b91cd7ec))
- 调整生产环境本地存储、日志位置 ([2254e55](https://github.com/Charles7c/continew-admin/commit/2254e555af9cade4897d5335b252a0312d6805eb))
- 调整项目打包结构，分离依赖、配置文件 ([e679abf](https://github.com/Charles7c/continew-admin/commit/e679abfccc6c80198512958b6d07b363074d9d76))

## [v1.1.2](https://github.com/Charles7c/continew-admin/compare/v1.1.1...v1.1.2) (2023-09-24)

### 💎 功能优化

- 优化后端程序启动成功输出内容 ([6322859](https://github.com/Charles7c/continew-admin/commit/63228598d9fcd6e5d00172c12418a371d4c96766))
- 配置子级菜单图标 ([5544836](https://github.com/Charles7c/continew-admin/commit/55448364a39085debb776463f5e95a15b186c447))

### 🐛 问题修复

- 修复生产环境和开发环境样式不一致的问题 ([be8732d](https://github.com/Charles7c/continew-admin/commit/be8732d812e021631864b0ff6225b4da24cafcee))
- 排除路径配置放开 /error ([0428fe7](https://github.com/Charles7c/continew-admin/commit/0428fe776224afb64601901cef4d3100e5d30bd6))
- 修复初始数据缺失字段列表的问题 ([d5138e1](https://github.com/Charles7c/continew-admin/commit/d5138e1e43bdc8b347e061890131ac2646b2dd3c))
- 修复系统日志表索引缺失导致查询耗时较长的问题 ([ac43833](https://github.com/Charles7c/continew-admin/commit/ac438337219f5a160d49b255805774da36ab865c))
- 修复部分菜单数据 component 信息配置错误 ([11ea072](https://github.com/Charles7c/continew-admin/commit/11ea072d600f24fe97fe8145208e821712b84839))
- 修复图标 SVG 内容格式错误 ([20f1e8a](https://github.com/Charles7c/continew-admin/commit/20f1e8aecc737b28ab869d363957513d868b4ab7))

## [v1.1.1](https://github.com/Charles7c/continew-admin/compare/v1.1.0...v1.1.1) (2023-09-06)

### 💎 功能优化

- 调整 Mock 响应时长，以解决前端偶发需重复登录问题 ([df19c5d](https://github.com/Charles7c/continew-admin/commit/df19c5d2197fabb61cbdd4dccf1c427fb23d77d4))

### 🐛 问题修复

- 还原登录 Helper 优化（导致重大登录问题及查询在线用户错误） ([#15](https://github.com/Charles7c/continew-admin/pull/15)) ([7a6db2d](https://github.com/Charles7c/continew-admin/commit/7a6db2d14e60a5fcc1a2786e6eaa3d46a0714e6c)) ([#9](https://github.com/Charles7c/continew-admin/pull/9)) ([9e2a5ef](https://github.com/Charles7c/continew-admin/commit/9e2a5ef1249fd93dd10f2c255bf77c3eaa64a241))
- 修复刷新页面后，选中菜单无法保持展开状态的问题 ([3fc7adb](https://github.com/Charles7c/continew-admin/commit/3fc7adb1e2bd4b648753bd2999df725417e01680))
- 修复侧边栏菜单无法显示自定义图标的问题 ([10ca5d8](https://github.com/Charles7c/continew-admin/commit/10ca5d8c76aa39a207ea7db4442bf63ff4578273))
- 更正 README 文档项目结构部分内容 ([486da2f](https://github.com/Charles7c/continew-admin/commit/486da2f79bfc5379213bf666b8f325fb8096ebc6))
- 修复公告缺失待发布状态的问题 ([#14](https://github.com/Charles7c/continew-admin/pull/14)) ([46cc4c9](https://github.com/Charles7c/continew-admin/commit/46cc4c9307e3cc7060ae436f59f007831104884a))

## [v1.1.0](https://github.com/Charles7c/continew-admin/compare/v1.0.1...v1.1.0) (2023-09-01)

### ✨ 新特性

* 公告管理：提供公告的发布、查看和删除等功能。管理员可以在后台发布公告，并可以设置公告的生效时间、终止时间，以 markdown-it 为内核渲染 Markdown 格式内容显示
* 代码生成：提供根据数据库表自动生成相应的前后端 CRUD 代码的功能
* 允许表格调整列宽，不允许新增/修改类表单对话框按 Esc 关闭 ([1b06a96](https://github.com/Charles7c/continew-admin/commit/1b06a96cfbe5774931d8c4c0d7827703caa096df))

### 💎 功能优化

- 最终适配及启用 Arco Design Pro Vue 动态路由 ([9baf341](https://github.com/Charles7c/continew-admin/commit/9baf3410138cb8a152ec51f70340d500fa009510))
- 优化分页总记录数数据类型 ([bfea689](https://github.com/Charles7c/continew-admin/commit/bfea689b0eaf44c8d54b4fd59c042d72ac71e395))
- 修复在线用户列表等自定义分页查询 NPE 的问题 ([015ff55](https://github.com/Charles7c/continew-admin/commit/015ff5512b3662efce88d02ab1dda6d55501a501))
- 对获取路由信息接口增加缓存处理 ([4639d13](https://github.com/Charles7c/continew-admin/commit/4639d13ba61abfaed3c9d3da0e057892577b5c40))⚡
- 完善前端 axios 请求响应拦截器 ([bb398d8](https://github.com/Charles7c/continew-admin/commit/bb398d8101e3780f450c6508852fc727fb936cee)) ([e18692f](https://github.com/Charles7c/continew-admin/commit/e18692fa74e0a0d9558db6643b945c6c6a00db36))
- 优化仪表盘公告区块、帮助文档区块内容 ([b59a819](https://github.com/Charles7c/continew-admin/commit/b59a819ad5f2bdbd357951f070d155e91f2d7903)) ([315c059](https://github.com/Charles7c/continew-admin/commit/315c059713833be10b0cf05d302259a3146f3707)) ([6d024a9](https://github.com/Charles7c/continew-admin/commit/6d024a90d7a231439c8e260b9bd625e8b5027515))
- 将 Swagger 文档中的额外请求参数隐藏 ([#11](https://github.com/Charles7c/continew-admin/pull/11)) ([a9ed02b](https://github.com/Charles7c/continew-admin/commit/a9ed02bf4ff6a8a4d9f68db2d62d29000c543943))
- 优化前端 CRUD 相关命名 ([6d81928](https://github.com/Charles7c/continew-admin/commit/6d81928541f4da568e9c7138f91d4dc1c5c6dd4e))
- 优化部分超链接标签属性 ([46a75d0](https://github.com/Charles7c/continew-admin/commit/46a75d029798e8d5a162b53b8a61c8e3c3f4dd9e))
- 使用属性变量消除配置文件中分散的 ContiNew Admin 品牌元素 ([54ea410](https://github.com/Charles7c/continew-admin/commit/54ea41048abd096cf1e2c32ee871c1eb85d4ece1))
- 拆分 Swagger 接口文档分组 ([#10](https://github.com/Charles7c/continew-admin/pull/10)) ([72df45e](https://github.com/Charles7c/continew-admin/commit/72df45e9b3373d28f1845af16a81cb8bd8408647))
- 优化登录 Helper ([#9](https://github.com/Charles7c/continew-admin/pull/9)) ([9e2a5ef](https://github.com/Charles7c/continew-admin/commit/9e2a5ef1249fd93dd10f2c255bf77c3eaa64a241))
- 将全局异常处理器未知异常的异常类型从 Exception 调整为 Throwable ([90e1c64](https://github.com/Charles7c/continew-admin/commit/90e1c64db684df97454e4753932b7f4017d8e23d))
- 优化 == 及 != 表达式格式 ([487fa82](https://github.com/Charles7c/continew-admin/commit/487fa82306fbd84033f6c39ad20b72755b03e875))
- 集成 Spring Cache，优化查询用户昵称性能 ([b23b00d](https://github.com/Charles7c/continew-admin/commit/b23b00d02a4738a61b4a13676fab6d2c9ec927de)) ([76622c2](https://github.com/Charles7c/continew-admin/commit/76622c238f1d6028826407490e50a14bdba25ade))⚡
- 将验证码唯一标识格式从无符号 UUID 调整为带符号 UUID ([a61196c](https://github.com/Charles7c/continew-admin/commit/a61196cd62cea4f684154bb42a949656650f626b))
- 完善接口文档示例信息 ([#7](https://github.com/Charles7c/continew-admin/pull/7)) ([ad7d699](https://github.com/Charles7c/continew-admin/commit/ad7d6995ba40a0cb70a194693fa450bdbb3cc7a0)) ([#8](https://github.com/Charles7c/continew-admin/pull/8)) ([0ac0213](https://github.com/Charles7c/continew-admin/commit/0ac0213628023c04b5be531522d76f09712f7317)) ([190385e](https://github.com/Charles7c/continew-admin/commit/190385ed3636206224bc90780fcede2e49f9c118)) ([332bd6c](https://github.com/Charles7c/continew-admin/commit/332bd6cd2a9b4e25678a3eec565965c5b2702aa2))
- 使用 DatePattern 中的日期格式常量替代字符串常量中的日期格式 ([241a9cf](https://github.com/Charles7c/continew-admin/commit/241a9cf85b3c19eb093d4d661c35d71c490adf1f))
- 优化分组校验 ([78a5d5e](https://github.com/Charles7c/continew-admin/commit/78a5d5ec7a14ee37d92a9520211adca23f12b287))
- 优化 springdoc-openapi 对象型参数处理 ([ae8d294](https://github.com/Charles7c/continew-admin/commit/ae8d294705536e99d6c30a9ff5257fdb3ee5b35f))
- 升级前端依赖，并更换包管理器 yarn => pnpm ([6164110](https://github.com/Charles7c/continew-admin/commit/6164110462cc3aff66d79539f54e84d47c6d5894))
- 升级后端依赖 ([51a82d8](https://github.com/Charles7c/continew-admin/commit/51a82d8f4eabd6aa27e1a991f05f516171b6ae03))

### 🐛 问题修复

- 完善部分数据库表的唯一索引 ([88d6118](https://github.com/Charles7c/continew-admin/commit/88d6118693586fbd8da573df3b2f942d049e4b3c))
- 修复访问 doc.html 接口文档，控制台报 No mapping for GET /favicon.ico 警告的问题 ([94f88ba](https://github.com/Charles7c/continew-admin/commit/94f88bad2278d64a4b8a3bc930a9f754fb00cba6))
- 登录页面输入错误时，自动清空验证码输入框 ([a76f47f](https://github.com/Charles7c/continew-admin/commit/a76f47fbd86bfa7fbf85440c653ae6259fce7969))

### 💥 破坏性变更

- 更新信息调整为仅在更新数据时自动填充 ([df77e57](https://github.com/Charles7c/continew-admin/commit/df77e574cca605afd89f1b3781f1cde699bcb7e6))
- 将时间戳单位从毫秒调整为秒 ([fa916b9](https://github.com/Charles7c/continew-admin/commit/fa916b93247e10462eb44185ad45cdca4dedda7d))
- 移除所有的 @Accessors(chain = true)，并全局配置禁止使用 ([76c6546](https://github.com/Charles7c/continew-admin/commit/76c65463c2e5ddf0c90fa1622fd86706a4373c80))

## [v1.0.1](https://github.com/Charles7c/continew-admin/compare/v1.0.0...v1.0.1) (2023-08-17)

### 💎 功能优化

- 优化根据 ID 查询用户昵称方法 ([4a8af1f](https://github.com/Charles7c/continew-admin/commit/4a8af1f72d9249afa1c013e08674f492f453b020))
- 优化 BaseController 中部分权限码的使用 ([b0b1127](https://github.com/Charles7c/continew-admin/commit/b0b1127b5bd39e9bc431e9fa9c86201bbc18e891))
- 优化分页总记录数数据类型 ([76f04dd](https://github.com/Charles7c/continew-admin/commit/76f04dd38f90aad6abf82d2dccba031d4d9108cf))
- 优化通用查询注解解析器 ([a623acd](https://github.com/Charles7c/continew-admin/commit/a623acd4a5529ae42898ec359f595716acc5bab8)) ([b632c18](https://github.com/Charles7c/continew-admin/commit/b632c183994ac71382180a38bf7bdb7a6315c1e6))
- 优化数据库表结构中部分类型长度 ([f3fabea](https://github.com/Charles7c/continew-admin/commit/f3fabea7dd736d94badecbc08091eec6274f5fb7))
- 使用常量优化部分魔法值 ([e6f7429](https://github.com/Charles7c/continew-admin/commit/e6f7429fa30cbc87c03a073a53b6f7df24d33d8d))
- 优化部分 Properties 用法 ([48de2e8](https://github.com/Charles7c/continew-admin/commit/48de2e85e0fbf60f10769cd3529f79ac3c531e92))

### 🐛 问题修复

- 修复获取字典参数为空时的判断条件 ([#6](https://github.com/Charles7c/continew-admin/pull/6)) ([104f69e](https://github.com/Charles7c/continew-admin/commit/104f69e8a09ce36163f6f9680b2d8d61bb45f11a))
- 完善查询用户数据权限 ([026247f](https://github.com/Charles7c/continew-admin/commit/026247f677110ae199124a67c68503729cbaec92))
- 解决 IDE 报 Delete ␍ eslint(prettier/prettier) 警告的问题 ([8743ed1](https://github.com/Charles7c/continew-admin/commit/8743ed14d927ab52814ed5f5f166afaa7a6b78b2))
- 修复分页查询条件默认值未生效的问题 ([2d2a7e7](https://github.com/Charles7c/continew-admin/commit/2d2a7e7c8e31763ac3ea514d8a92c3938376dd3a))
- 完善各模块事务注解 ([18c54a7](https://github.com/Charles7c/continew-admin/commit/18c54a74fc6ff0650ff53eeadc094d7e1df0b0a5))
- 修复邮箱健康检查报错问题并优化部分配置写法 ([5968f40](https://github.com/Charles7c/continew-admin/commit/5968f402ed478244d36f5825373190ed00d8c1f1))
- 完善各模块参数校验 ([8b955a0](https://github.com/Charles7c/continew-admin/commit/8b955a0b1bde4e8959fc0dfbc11a326d9eec0b45))

## v1.0.0 (2023-03-26)

### ✨ 新特性

* 用户管理：提供用户的相关配置，新增用户后，默认密码为 123456
* 角色管理：对权限与菜单进行分配，可根据部门设置角色的数据权限
* 部门管理：可配置系统组织架构，树形表格展示
* 菜单管理：已实现菜单动态路由，后端可配置化，支持多级菜单
* 在线用户：管理当前登录用户，可一键踢下线
* 日志管理：提供在线用户监控、登录日志监控、操作日志监控和系统日志监控等监控功能
