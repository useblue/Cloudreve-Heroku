#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
; 运行模式
Mode = master
; 监听端口
Listen = :${PORT}
; 是否开启 Debug
Debug = false
[Redis]
Server = 127.0.0.1:6379
Password =
DB = 0
[Database]
Type = $DB_Type
Host = $DB_Host
Port = $DB_Port
User = $DB_User
Password = $DB_Password
Name = $DB_Name
Charset = $DB_Charset
TablePrefix = $DB_TablePrefix
EOF
(redis-server &) && (./cloudreve -c ./conf.ini)
