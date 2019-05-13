echo -n '学籍番号: '
read no
cd $no
if [ $? -eq 0 ]; then
    git clean -f
    git pull
    cd ..
fi
