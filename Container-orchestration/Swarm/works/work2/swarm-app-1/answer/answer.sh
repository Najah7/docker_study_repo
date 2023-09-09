#! /bin/sh

docker network create -d overlay backend

docker network create -d overlay frontend

docker service create --name vote -p 80:80 --network frontend --replicas 2 bretfisher/examplevotingapp_vote

docker service create --name redis --network frontend redis:3.2

docker service create --name db --network backend -e POSTGRES_HOST_AUTH_METHOD=trust --mount type=volume,source=db-data,target=/var/lib/postgresql/data postgres:9.4

# NOTE:👆`--mount type=volume,source=db-data,target=/var/lib/postgresql/data` はサービスにボリュームをマウントするためのもの。
# type: ボリュームのタイプを指定する。今回は`volume`を指定している。その他には`bind`がある。
# source: ボリュームの名前を指定する。今回は`db-data`という名前を指定している。
# target: コンテナ内のどのディレクトリにマウントするかを指定する。今回は`/var/lib/postgresql/data`というディレクトリにマウントしている。

docker service create --name worker --network frontend --network backend bretfisher/examplevotingapp_worker

docker service create --name result --network backend -p 5001:80 bretfisher/examplevotingapp_result
