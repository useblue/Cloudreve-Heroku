#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
Mode = master
Listen = :${PORT}
[Redis]
Server = ${REDIS_URL##*@}
Password = ${REDIS_URL:9:65}
DB = 0
[Database]
Type = mysql
Host = ${JAWSDB_URL:42:57}
Port = ${JAWSDB_URL:100:4}
User = ${JAWSDB_URL:8:16}
Password = ${JAWSDB_URL:25:16}
Name = ${JAWSDB_URL##*/}
Charset = utf8
TablePrefix = cd
EOF

./cloudreve -c ./conf.ini