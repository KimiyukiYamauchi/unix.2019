#!/bin/bash

quizno="0611"
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
bash ${quizno}01.sh

read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
echo '2)'
bash ${quizno}02.sh

echo "${no} end..."
