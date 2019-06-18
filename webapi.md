# Web APIの使い方

## 郵便番号検索API

- curl http://zip.cgis.biz/csv/zip.php?zn=9012101 2> /dev/null | nkf -wLu

## 路線/駅名検索API

- curl 'http://express.heartrails.com/api/json?method=getLines&prefecture=沖縄県'
- curl 'http://express.heartrails.com/api/json?method=getStations&line=沖縄ゆいレール'
- curl 'http://express.heartrails.com/api/json?method=getStations&line=沖縄ゆいレール' 2> /dev/null | jq '.'
- curl 'http://express.heartrails.com/api/json?method=getStations&line=沖縄ゆいレール' 2> /dev/null | jq '.response.station[].name'