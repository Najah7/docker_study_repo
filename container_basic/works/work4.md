# 冗長化したElastcisearchを作成する。（ロードバランサー機能を作成する）

※同じ名前でコンテナを同じバーチャルネットワークに作成することで、自動でロードバランスしてくれる。

# Steps

1. バーチャルネットワークを作成
```bash
docker network create my-bridge-network
```
1. 1つ目のelasticsearchコンテナを作成
```bash 
docker container run --detach --name search --network my-bridge-network elasticsearch:2
```
1. 2つ目のelasticsearchコンテナを作成
```bash
docker container run --detach --name search --network my-bridge-network elasticsearch:2
```
1. DNSの確認
```bash 
docker container run --rm --network my-bridge-network alpine nslookup search
```
1. ロードバランスの確認(ランダムにコンテナが選択されればＯＫ)
```bash
docker container run --rm --network my-bridge-network centos curl -s search:9200
```
1. コンテナを削除
```bash
docker container rm -f <container> <container>
```

