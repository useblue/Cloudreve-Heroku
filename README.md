# Cloudreve-Heroku with Redis
Cloudreve with redis的Docker版本
---
一键部署在Heroku上：[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

---
#### 查看mysql（实验）版：https://github.com/useblue/Cloudreve-Heroku/tree/Heroku-mysql
## 关于（目前）
### 使用redis:6.0.5-alpine镜像制作，默认开启Redis缓存服务
### 容器中的Redis版本为 6.0.5
### 容器中的Cloudreve版本为 cloudreve_3.2.1_linux_amd64(#3b22b4f)
---
## 账户信息-请及时修改
### 用户名：admin@cloudreve.org
### 密码：vUUH4MpL
---
#### 可能会随Cloudreve仓库进行大版本更新
#### 生成日志：
```
   ___ _                 _
  / __\ | ___  _   _  __| |_ __ _____   _____
 / /  | |/ _ \| | | |/ _ | '__/ _ \ \ / / _ \
/ /___| | (_) | |_| | (_| | | |  __/\ V /  __/
\____/|_|\___/ \__,_|\__,_|_|  \___| \_/ \___|

   V3.1.1  Commit #27bf8ca  Pro=false
================================================

[Info]    2020-07-18 18:36:53 初始化数据库连接
[Info]    2020-07-18 18:36:53 开始进行数据库初始化...
[Info]    2020-07-18 18:36:53 初始管理员账号：admin@cloudreve.org
[Info]    2020-07-18 18:36:53 初始管理员密码：vUUH4MpL
[Info]    2020-07-18 18:36:54 数据库初始化结束
[Info]    2020-07-18 18:36:54 初始化任务队列，WorkerNum = 10
[Info]    2020-07-18 18:36:54 初始化定时任务...
[Info]    2020-07-18 18:36:54 当前运行模式：Master
```