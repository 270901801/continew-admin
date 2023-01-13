# ContiNew Admin 中后台管理框架

[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://github.com/Charles7c/continew-admin/blob/dev/LICENSE)
![SNAPSHOT](https://img.shields.io/badge/SNAPSHOT-v0.0.1-%23ff3f59.svg)

📚 [演示地址](https://cnadmin.charles7c.top)

## 简介

ContiNew Admin 中后台管理框架（孵化中），Continue New Admin，持续以最新流行技术栈构建。当前阶段采用的技术栈：Vue3、TypeScript、Arco Design Pro Vue、Spring Boot、Undertow、Sa-Token、JWT、MariaDB、MyBatis Plus、Redis、Redisson、Hutool 等。

## 开始

> 注意：下方步骤有重叠部分，无需重复执行。

### 后端

```bash
# 1.克隆本项目
git clone https://github.com/Charles7c/continew-admin.git

# 2.在 IDE（IntelliJ IDEA/Eclipse）中打开本项目

# 3.修改配置文件中的数据源配置信息、Redis 配置信息、邮件配置信息等
# [3.也可以在 IntelliJ IDEA 中直接配置程序启动环境变量（DB_HOST、DB_PORT、DB_USER、DB_PWD、DB_NAME；REDIS_HOST、REDIS_PORT、REDIS_PWD、REDIS_DB）]

# 4.启动程序
# 4.1 启动成功：访问 http://localhost:8000/，页面输出：ContiNew Admin backend service started successfully.
# 4.2 接口文档：http://localhost:8000/doc.html

# 5.部署
# 5.1 Docker 部署
#   5.1.1 服务器安装好 docker 及 docker-compose（参考：https://blog.charles7c.top/categories/fragments/2022/10/31/CentOS%E5%AE%89%E8%A3%85Docker）
#   5.1.2 执行 mvn package -P prod 进行项目打包，将 target 目录下的 continew-admin.jar 放到 /docker/continew-admin/server 目录下
#   5.1.3 将 docker 目录上传到服务器 / 目录下，并授权（chmod -R 777 /docker）
#   5.1.4 修改 docker-compose.yml 中的 MariaDB 配置、Redis 配置、continew-admin-server 配置、Nginx 配置
#   5.1.5 执行 docker-compose up -d 创建并后台运行所有容器
# 5.2 其他方式部署
```

### 前端

```bash
# 1.克隆本项目
git clone https://github.com/Charles7c/continew-admin.git

# 2.在 IDE（Visual Studio Code/WebStorm）中打开前端项目 continew-admin-ui

# 3.配置淘宝源
yarn config set registry https://registry.npm.taobao.org

# 4.安装依赖
yarn install

# 5.启动程序
# 5.1 启动成功：访问 http://localhost:5173/
yarn dev

# 6.部署
# 6.1 Docker 部署
#   6.1.1 服务器安装好 docker 及 docker-compose（参考：https://blog.charles7c.top/categories/fragments/2022/10/31/CentOS%E5%AE%89%E8%A3%85Docker）
#   6.1.2 执行 yarn build 进行项目打包，将 dist 目录下的所有文件放到 /docker/continew-admin/web 目录下
#   6.1.3 将 docker 目录上传到服务器 / 目录下，并授权（chmod -R 777 /docker）
#   6.1.4 修改 docker-compose.yml 中的 MariaDB 配置、Redis 配置、continew-admin-server 配置、Nginx 配置
#   6.1.5 执行 docker-compose up -d 创建并后台运行所有容器
# 6.2 其他方式部署
```

## 技术栈

| 名称                                                         | 版本         | 简介                                                         |
| :----------------------------------------------------------- | :----------- | :----------------------------------------------------------- |
| [Vue](https://cn.vuejs.org/)                                 | 3.2.45       | 渐进式 JavaScript 框架，易学易用，性能出色，适用场景丰富的 Web 前端框架。 |
| [TypeScript](https://www.typescriptlang.org/zh/)             | 4.9.4        | TypeScript 是微软开发的一个开源的编程语言，通过在 JavaScript 的基础上添加静态类型定义构建而成。 |
| [Arco Design Pro Vue](http://pro.arco.design/)               | 2.6.0        | 基于 Arco Design Vue 组件库的开箱即用的中后台前端解决方案。  |
| [Spring Boot](https://spring.io/projects/spring-boot)        | 2.7.7        | 简化新 Spring 应用的初始搭建以及开发过程。                   |
| [Undertow](https://undertow.io/)                             | 2.2.22.Final | 采用 Java 开发的灵活的高性能 Web 服务器，提供包括阻塞和基于 NIO 的非堵塞机制。 |
| [Sa-Token + JWT](https://sa-token.dev33.cn/)                 | 1.33.0       | 轻量级 Java 权限认证框架，让鉴权变得简单、优雅。             |
| [MariaDB](https://mariadb.org/)                              | 10.10.2      | MySQL 的一个分支，主要由开源社区在维护，完全兼容 MySQL，包括 API 和命令行，能轻松成为 MySQL 的代替品。 |
| [MyBatis Plus](https://baomidou.com/)                        | 3.5.3.1      | MyBatis 的增强工具，在 MyBatis 的基础上只做增强不做改变，简化开发、提高效率。 |
| [dynamic-datasource-spring-boot-starter](https://www.kancloud.cn/tracy5546/dynamic-datasource/2264611) | 3.6.1        | 基于 Spring Boot 的快速集成多数据源的启动器。                |
| Hikari                                                       | 4.0.3        | JDBC 连接池，号称 “史上最快连接池”，SpringBoot 在 2.0 之后，采用的默认数据库连接池就是 Hikari。 |
| [mysql-connector-j](https://dev.mysql.com/doc/connector-j/8.0/en/) | 8.0.31       | MySQL Java 驱动。                                            |
| [P6Spy](https://github.com/p6spy/p6spy)                      | 3.9.1        | SQL 性能分析组件。                                           |
| [Liquibase](https://github.com/liquibase/liquibase)          | 4.9.1        | 用于管理数据库版本，跟踪、管理和应用数据库变化。             |
| [Redis](https://redis.io/)                                   | 6.2.7        | 高性能的 key-value 数据库。                                  |
| [Redisson](https://github.com/redisson/redisson/wiki/Redisson%E9%A1%B9%E7%9B%AE%E4%BB%8B%E7%BB%8D) | 3.19.0       | 不仅仅是一个 Redis Java 客户端，同其他 Redis Java 客户端有着很大的区别，相比之下其他客户端提供的功能还仅仅停留在作为数据库驱动层面上，比如仅针对 Redis 提供连接方式，发送命令和处理返回结果等。而 Redisson 充分的利用了 Redis 键值数据库提供的一系列优势，基于 Java 实用工具包中常用接口，为使用者提供了一系列具有分布式特性的常用工具类。使得原本作为协调单机多线程并发程序的工具包获得了协调分布式多机多线程并发系统的能力，大大降低了设计和研发大规模分布式系统的难度。同时结合各富特色的分布式服务，更进一步简化了分布式环境中程序相互之间的协作。 |
| Easy Captcha                                                 | 1.6.2        | Java 图形验证码，支持 gif、中文、算术等类型，可用于 Java Web、JavaSE 等项目。 |
| [Knife4j](https://doc.xiaominfo.com/)                        | 4.0.0        | 前身是 swagger-bootstrap-ui，集 Swagger2 和 OpenAPI3 为一体的增强解决方案。本项目使用的是 [knife4j-openapi3-spring-boot-starter](https://gitee.com/xiaoym/swagger-bootstrap-ui-demo/tree/master/knife4j-springdoc-openapi-demo) 基于 OpenAPI3 规范，在 Spring Boot < 3.0.0-M1 的单体架构下可以直接引用此 starter，该模块包含了 UI 部分，底层基于 springdoc-openapi 项目。 |
| [Hutool](https://www.hutool.cn/)                             | 5.8.11       | 小而全的 Java 工具类库，通过静态方法封装，降低相关 API 的学习成本，提高工作效率，使 Java 拥有函数式语言般的优雅，让 Java 语言也可以“甜甜的”。 |
| [Lombok](https://projectlombok.org/)                         | 1.18.24      | 在 Java 开发过程中用注解的方式，简化了 JavaBean 的编写，避免了冗余和样板式代码，让编写的类更加简洁。 |

## 项目结构

### 后端

采用按功能拆分模块的开发方式，项目目录结构如下：

> 下方项目目录结构是按照模块的层次顺序进行介绍的，实际 IDE 中 `continew-admin-common` 模块会因为字母排序原因排在上方。

```bash
continew-admin  # 全局通用项目配置及依赖版本管理
  ├─ continew-admin-webapi   # API 模块（存放 Controller 层代码，打包部署的模块）
  │  └─ src
  │    └─ main
  │      ├─ java        # 工程源文件代码目录
  │      │  └─ top
  │      │    └─ charles7c
  │      │      └─ cnadmin
  │      │        ├─ webapi
  │      │        │  └─ controller  
  │      │        │    ├─ auth    # 认证相关 API
  │      │        │    ├─ common  # 公共相关 API（例如：验证码 API 等）
  │      │        │    └─ system  # 系统管理相关 API
  │      │        └─ ContinewAdminApplication.java  # 启动入口
  │      └─ resources   # 工程配置目录
  │        ├─ db.changelog   # 数据库脚本文件
  │        │  └─ v0.0.1        # v0.0.1 版本数据库脚本文件
  │        └─ templates      # 模板文件
  │          └─ mail           # 邮件模板
  ├─ continew-admin-monitor  # 系统监控模块（存放系统监控模块相关功能，例如：日志管理、服务监控等）
  │  └─ src
  │    └─ main
  │      ├─ java        # 工程源文件代码目录
  │      │  └─ top
  │      │    └─ charles7c
  │      │      └─ cnadmin
  │      │        └─ monitor
  │      │          ├─ annotation    # 系统监控相关注解
  │      │          ├─ config        # 系统监控相关配置
  │      │          │  └─ properties   # 系统监控相关配置属性
  │      │          ├─ enums         # 系统监控相关枚举
  │      │          ├─ filter        # 系统监控相关过滤器
  │      │          ├─ interceptor   # 系统监控相关拦截器
  │      │          ├─ mapper        # 系统监控相关 Mapper
  │      │          ├─ model         # 系统监控相关模型
  │      │          │  └─ entity       # 系统监控相关实体对象
  │      │          └─ service       # 系统监控相关业务接口及实现类
  │      │             └─ impl         # 系统监控相关业务实现类
  │      └─ resources   # 工程配置目录
  │         └─ mapper        # MyBatis Mapper XML 文件目录
  ├─ continew-admin-system   # 系统管理模块（存放系统管理模块相关功能，例如：部门管理、角色管理、用户管理等）
  │  └─ src
  │    └─ main
  │      ├─ java        # 工程源文件代码目录
  │      │  └─ top
  │      │    └─ charles7c
  │      │      └─ cnadmin
  │      │        ├─ auth     # 系统认证相关业务及配置
  │      │        │  ├─ config    # 系统认证相关配置
  │      │        │  │  └─ satoken    # Sa-Token 配置
  │      │        │  ├─ model     # 系统认证相关模型
  │      │        │  │  ├─ request    # 系统认证相关请求对象
  │      │        │  │  └─ vo         # 系统认证相关 VO（View Object）
  │      │        │  └─ service   # 系统认证相关业务接口及实现类
  │      │        │     └─ impl       # 系统认证相关业务实现类
  │      │        └─ system   # 系统管理相关业务及配置
  │      │          ├─ mapper     # 系统管理相关 Mapper
  │      │          ├─ model      # 系统管理相关模型
  │      │          │  ├─ entity      # 系统管理相关实体对象
  │      │          │  ├─ request     # 系统管理相关请求对象
  │      │          │  └─ vo          # 系统管理相关 VO（View Object）
  │      │          └─ service    # 系统管理相关业务接口及实现类
  │      │             └─ impl        # 系统管理相关业务实现类
  │      └─ resources   # 工程配置目录
  │         └─ mapper        # MyBatis Mapper XML 文件目录
  ├─ continew-admin-common   # 公共模块（存放公共工具类，公共配置等）
  │  └─ src
  │    └─ main
  │      └─ java        # 工程源文件代码目录
  │        └─ top
  │          └─ charles7c
  │            └─ cnadmin
  │              └─ common
  │                ├─ config       # 公共配置
  │                │  ├─ jackson      # Jackson 配置
  │                │  ├─ mybatis      # MyBatis Plus 配置
  │                │  ├─ threadpool   # 线程池配置
  │                │  └─ properties   # 公共配置属性
  │                ├─ consts       # 公共常量
  │                ├─ enums        # 公共枚举
  │                ├─ exception    # 公共异常
  │                ├─ handler      # 公共处理器
  │                ├─ model        # 公共模型
  │                │  ├─ dto          # 公共 DTO（Data Transfer Object）
  │                │  ├─ entity       # 公共实体对象
  │                │  └─ vo           # 公共 VO（View Object）
  │                └─ util         # 公共工具类
  │                  ├─ helper        # 公共 Helper（助手）
  │                  ├─ holder        # 公共 Holder（持有者）
  │                  └─ validate      # 公共校验器（参数校验，业务校验）
```

### 前端

```bash
continew-admin
  └─ continew-admin-ui      # 前端项目
    ├─ public               # 公共静态资源（favicon.ico、logo.svg）
    ├─ src
    │  ├─ api               # 请求接口
    │  │  ├─ auth             # 认证模块
    │  │  ├─ common           # 公共模块
    │  │  └─ system           # 系统管理模块
    │  ├─ assets            # 静态资源
    │  │  ├─ images           # 图片资源
    │  │  └─ style            # 样式资源
    │  ├─ components        # 通用业务组件
    │  ├─ config            # 全局配置（包含 echarts 主题）
    │  │  └─ settings.json    # 配置文件
    │  ├─ directives        # 指令集（如需，可自行补充）
    │  ├─ hooks             # 全局 hooks
    │  ├─ layout            # 布局
    │  ├─ locale            # 国际化语言包
    │  ├─ mock              # 模拟数据
    │  ├─ router            # 路由配置
    │  ├─ store             # 状态管理中心
    │  ├─ types             # TypeScript 类型
    │  ├─ utils             # 工具库
    │  ├─ views             # 页面模板
    │  │  ├─ login            # 登录模块
    │  │  └─ system           # 系统管理模块
    │  │    └─ user             # 用户模块
    │  │      └─ center           # 个人中心
    │  ├─ App.vue           # 视图入口
    │  └─ main.ts           # 入口文件
    ├─ .env.development
    ├─ .env.production
    ├─ index.html
    ├─ package.json
    └─ tsconfig.json
```

## License

- 遵循 [Apache-2.0](https://github.com/Charles7c/continew-admin/blob/dev/LICENSE) 开源许可协议
- Copyright © 2022-present Charles7c