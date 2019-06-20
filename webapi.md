# Web APIの使い方

## 郵便番号検索API

- curl http://zip.cgis.biz/csv/zip.php?zn=9012101 2> /dev/null | nkf -wLu

## 路線/駅名検索API

- curl 'http://express.heartrails.com/api/json?method=getLines&prefecture=沖縄県' 2> /dev/null | jq '.response.line[]'
- curl 'http://express.heartrails.com/api/json?method=getStations&line=沖縄ゆいレール' 2> /dev/null | jq '.response.station[].name'

## 外部リンクのリンク切れチェック

- curl https://www.it-college.ac.jp | grep -o 'href="[^"]*"' | grep http | sed 's/^href=//' | awk '{print "curl -f",$1,"> /dev/null"}' | tee list | bash -e
