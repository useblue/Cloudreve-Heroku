#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
; 运行模式
Mode = master
; 监听端口
Listen = :${PORT}
; 是否开启 Debug
Debug = false
SessionSecret = DwueqsOCChydmVIgTFtXNsqGNh3iUVOVyjdyBHPTppjG7FP1SiQYBOSZdOf35Pm7
HashIDSalt = LzCgoB9pLdHYwsPQJ46AIDtLfkZ4KbtprcI8cxoKnwj58kFctbc9q3CmTUdXsCFP
[Redis]
Server = 127.0.0.1:6379
Password =
DB = 0
[Database]
; 数据库类型，目前支持 sqlite | mysql
Type = mysql
; 数据库地址
Host = $DB_Host
; MySQL 端口
Port = 3306
; 用户名
User = $DB_User
; 密码
Password = $DB_Password
; 数据库名称
Name = $DB_Name
; 数据表前缀
TablePrefix = cd
EOF
(redis-server &) && (./cloudreve -c ./conf.ini)