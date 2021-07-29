#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
Mode = master
Listen = :${PORT}
Debug = false
SessionSecret = DwueqsOCChydmVIgTFtXNsqGNh3iUVOVyjdyBHPTppjG7FP1SiQYBOSZdOf35Pm7
HashIDSalt = LzCgoB9pLdHYwsPQJ46AIDtLfkZ4KbtprcI8cxoKnwj58kFctbc9q3CmTUdXsCFP
[Redis]
Server = ${REDIS_URL##*@}
Password = ${REDIS_URL:9:65}
DB = 0
[Database]
Type = postgres
Host = ${DATABASE_URL:91:41}
Port = ${DATABASE_URL:133:4}
User = ${DATABASE_URL:11:14}
Password = ${DATABASE_URL:26:64}
Name = ${DATABASE_URL##*/}
Charset = utf8
TablePrefix = cd
EOF

./cloudreve -c ./conf.ini