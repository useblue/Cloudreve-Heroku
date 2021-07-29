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
Server = ${REDIS_URL##*@}
Password = ${REDIS_URL:9:65}
DB = 0
[Database]
; 数据库类型，目前支持 sqlite | mysql
Type = postgres
; 数据库地址
Host = ${DATABASE_URL:91:41}
; MySQL 端口
Port = ${DATABASE_URL:133:4}
; 用户名
User = ${DATABASE_URL:11:14}
; 密码
Password = ${DATABASE_URL:26:64}
; 数据库名称
Name = ${DATABASE_URL##*/}
; 数据表前缀
TablePrefix = cd_
EOF
./cloudreve -c ./conf.ini