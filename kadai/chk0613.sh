#!/bin/bash

quizno="0613"
echo -n '学籍番号: '
read no

cat ${no}/${quizno}/backup.sh

cd ${no}/${quizno}

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
bash backup.sh
tar tzf /tmp/home-$(date +%Y%m%d).tar.gz | less
rm /tmp/home-$(date +%Y%m%d).tar.gz

echo "${no} end..."
