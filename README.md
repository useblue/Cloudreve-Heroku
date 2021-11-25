### Cloudreve-Heroku with Redis

Cloudreve with redis的Docker版本

---

一键部署在Heroku上：[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://www.heroku.com/deploy?template=https://github.com/useblue/Cloudreve-Heroku)

---

查看Heroku Redis + Heroku Postgres版：https://github.com/useblue/Cloudreve-Heroku/tree/Cloudreve-Heroku

查看Heroku Redis + Jawsdb Mysql版：https://github.com/useblue/Cloudreve-Heroku/tree/Heroku-mysql

#### 关于

使用redis:alpine镜像制作，默认开启Redis缓存服务

容器中的Cloudreve版本为 cloudreve_3.4.0_linux_amd64

---

#### 账户信息-请及时修改

已取消sqlite部署方式，请使用第三方mysql数据库进行连接

重置管理员密码（需本地环境操作）[点击跳转](https://ifibe.com/posts/c12ba40e/#配置文件)

#### 自定义信息

环境变量
```
[Database]
Type = mysql    # 数据库类型，目前支持 sqlite/mysql/mssql/postgres
Host = 127.0.0.1
Port = 3306
User = root
Password = root
Name = v3
Charset = utf8
TablePrefix = cd
```

---

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