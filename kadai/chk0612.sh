#!/bin/bash

quizno="0612"
quizno2="0604"
echo -n '学籍番号: '
read no

cat ${no}/${quizno}/${quizno2}0?.sh

cd ${no}/${quizno}

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '1)'
bash ${quizno2}02.sh ~/work/args.sh /etc/*
bash ${quizno2}02.sh /hoge /etc/hoge
bash ${quizno2}02.sh

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '2)'
bash ${quizno2}03.sh ~/work
bash ${quizno2}03.sh

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '3)'
bash ${quizno2}04.sh /etc
bash ${quizno2}04.sh

echo "${no} end..."
