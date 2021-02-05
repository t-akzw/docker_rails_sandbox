#!/bin/sh

list="\
 .env
 .env_postgres
"
exists=$(ls -1 $list 2>/dev/null |grep -c ".")
length=$(echo "$list" |grep -c ".")
[[ $exists -ne $length ]] && echo "${list} を作成してください!!!" && exit 1

docker-compose up -d --build
