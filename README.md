# Cloudreve-Heroku with Redis + Cleardb Mysql(实验性修改)
Cloudreve with redis的Docker版本
---
一键部署在Heroku上：[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

---
## 关于（目前）
### 使用redis:6.0.5-alpine镜像制作，默认开启Redis缓存服务
### 实验性内容：手动附加的Cleardb Mysql数据库（默认数据库空间为5MB）
### 容器中的Redis版本为 6.0.5
### 容器中的Cloudreve版本为 cloudreve_3.1.1_linux_amd64(#27bf8ca)
---
## 账户信息-请及时修改
第一次部署完成后在应用程序设置中编辑环境变量选项，根据`CLEARDB_DATABASE_URL`编辑对应条目
### 模板：
`CLEARDB_DATABASE_URL`=`mysql://adffdadf2341:adf4234@us-cdbr-east.cleardb.com/heroku_db?reconnect=true`=`mysql://Database User:Database Password@Database Host/Database Name?reconnect=true`

`Database Host`=`us-cdbr-east.cleardb.com`

`Database User`=`adffdadf2341`

`Database Password`=`adf4234`

`Database Name`=`heroku_db`

编辑完成在应用日志中查看默认的账户密码`只会显示一次，如果没有应该是错过了log，请删除应用重新配置`

---
#### 可能会随Cloudreve仓库进行大版本更新
#### 生成日志：
```
2020-07-21T04:43:01.670292+00:00 app[web.1]:    ___ _                 _                    
2020-07-21T04:43:01.670292+00:00 app[web.1]:   / __\ | ___  _   _  __| |_ __ _____   _____ 
2020-07-21T04:43:01.670292+00:00 app[web.1]:  / /  | |/ _ \| | | |/ _ | '__/ _ \ \ / / _ \	
2020-07-21T04:43:01.670293+00:00 app[web.1]: / /___| | (_) | |_| | (_| | | |  __/\ V /  __/
2020-07-21T04:43:01.670293+00:00 app[web.1]: \____/|_|\___/ \__,_|\__,_|_|  \___| \_/ \___|
2020-07-21T04:43:01.670294+00:00 app[web.1]: 
2020-07-21T04:43:01.670294+00:00 app[web.1]:    V3.1.1  Commit #27bf8ca  Pro=false
2020-07-21T04:43:01.670295+00:00 app[web.1]: ================================================
2020-07-21T04:43:01.670295+00:00 app[web.1]: 
2020-07-21T04:43:01.670977+00:00 app[web.1]: [Info]    2020-07-21 04:43:01 初始化数据库连接
2020-07-21T04:43:01.703827+00:00 app[web.1]: [Info]    2020-07-21 04:43:01 开始进行数据库初始化...
2020-07-21T04:43:02.537241+00:00 app[web.1]: [Info]    2020-07-21 04:43:02 初始管理员账号：admin@cloudreve.org
2020-07-21T04:43:02.537276+00:00 app[web.1]: [Info]    2020-07-21 04:43:02 初始管理员密码：06kTFXPM
2020-07-21T04:43:03.915000+00:00 app[web.1]: [Info]    2020-07-21 04:43:03 数据库初始化结束
2020-07-21T04:43:03.920567+00:00 app[web.1]: [Info]    2020-07-21 04:43:03 初始化任务队列，WorkerNum = 10
2020-07-21T04:43:03.952497+00:00 app[web.1]: [Info]    2020-07-21 04:43:03 初始化定时任务...
2020-07-21T04:43:04.086686+00:00 app[web.1]: [Info]    2020-07-21 04:43:04 当前运行模式：Master
2020-07-21T04:43:04.087044+00:00 app[web.1]: [Info]    2020-07-21 04:43:04 已连接到 Redis 服务器：127.0.0.1:6379
2020-07-21T04:43:04.087303+00:00 app[web.1]: [Info]    2020-07-21 04:43:04 开始监听 :7458
```