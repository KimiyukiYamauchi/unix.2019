echo -n '学籍番号: '
read no
cat $no/0521/05210?.sh
read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
cd $no/0521
bash 052101.sh
read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
bash 052102.sh
read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
bash 052103.sh
read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
bash 052104.sh
read -p "ok? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
bash 052105.sh
echo "$no end..."
