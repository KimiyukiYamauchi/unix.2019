#!/bin/bash

quizno="0620"
echo -n '学籍番号: '
read no

cat ${no}/${quizno}/${quizno}0?.sh
read -p "ok? (y/N): " yn

case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
cd ${no}/${quizno}
echo '1)'
bash ${quizno}01.sh 9012101

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '2)'
bash ${quizno}02.sh 福岡県 | less

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '3)'
bash ${quizno}03.sh 福岡市空港線 | less

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '4)'
bash ${quizno}04.sh http://kimiyuki.sakura.ne.jp 

echo "${no} end..."
