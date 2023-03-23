# Docker runの仕組み

1. ローカルのイメージを探す（イメージキャッシュから）
2. ローカルになければ、Docker Hubでイメージ探す（デフォルトはDocker Hub）
3. 最新のイメージをダウンロード
4. イメージからコンテナを作成(起動の準備（まだ起動していない）)
5. Docker enginのプライベートネットワークに仮想IPを持たせる
6. ホストのポートを公開して、コンテナのポートにフォワードする
7. Dockerfile imageのCMDを実行して、コンテナを起動する。

## runコマンドの例
```bash
docker container run --publish 80:80(You can use any port you like) --name <name> -d nginx:<tag> nginx -T <command>
```

# run vs. start

## run
<hr>
いつも新しいコンテナを作成して起動する。

## start
<hr>
既存の停止中のコンテナを起動する。

