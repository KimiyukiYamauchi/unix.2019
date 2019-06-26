#!/bin/bash

quizno="0604"
echo -n '学籍番号: '
read no

cat ${no}/${quizno}/${quizno}0?.sh
if [ -e ${no}/${quizno}/unix1.sh ]; then
    cat ${no}/${quizno}/unix1.sh
fi
read -p "ok? (y/N): " yn

case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
cd ${no}/${quizno}
echo '1)'
bash ${quizno}01.sh ~/Documents/pbl/homepage_guideline.pdf
bash ${quizno}01.sh /hoge

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '2)'
bash ${quizno}02.sh ~/work/args.sh /etc/*
bash ${quizno}02.sh /hoge /etc/hoge

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '3)'
bash ${quizno}03.sh ~/work

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '4)'
bash ${quizno}04.sh /etc

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '5)'
if [ -e unix1.sh ]; then
    bash unix1.sh
else
    bash ${quizno}05.sh
fi
echo "${no} end..."
