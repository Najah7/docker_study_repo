# Update DB version

## まとめ
ただイメージのバージョンを変えるだけでは、DBのバージョンを更新できる。<br>
相当なことがない限り、これでダイジョブ（特に一番左の大きいバージョン変更がない場合は、基本的に互換性ある）

1. ボリュームの作成

```bash
    docker volume create psql
```
1. 上記のボリュームをマウントして、DBを起動

```bash
    docker run -d --name psql1 -e POSTGRES_PASSWORD=mypassword -v psql:/var/lib/postgresql/data postgres:15.1
```

1. ログ確認

```bash
    docker logs psql1
```

1. コンテナを停止

```bash
    docker stop psql1
```

1. DBのバージョンを更新

```bash
    docker run -d --name psql2 -e POSTGRES_PASSWORD=mypassword -v psql:/var/lib/postgresql/data postgres:15.2
```

1. ログ確認

```bash
    docker logs psql2
```

1. コンテナを停止

```bash
    docker stop psql2
```

