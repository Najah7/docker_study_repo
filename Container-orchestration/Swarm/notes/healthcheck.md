# healthcheck
- コンテナの状態を監視する機能。
- コンテナが正常に動作しているかどうかを定期的にチェックすることができる。
- コンテナが正常に動作していない場合は、自動的に再起動することができる。
- Docker Engineがコマンドを実行してくれることで、コンテナの状態を監視することができる。（ex) curl http://localhost:8080 など）
- exit 0 で正常終了、exit 1 で異常終了となる。
- コンテナのステータス
  - starting：コンテナが起動中
  - healthy：コンテナが正常に動作している
  - unhealthy：コンテナが正常に動作していない


## Dockerでのhealthcheckの方法
- `docker container ls (--filter health=starting)`
- `docker container inspect <container_name>`：過去の5回のhealthcheckの結果を確認できる。

## helthcheck関係のコマンド
- `--health-cmd`：healthcheckのコマンドを指定する。
- `--health-interval`：healthcheckの間隔を指定する。デフォルトは30秒。
- `--health-retries`：healthcheckのリトライ回数を指定する。デフォルトは3回。
- `--health-timeout`：healthcheckのタイムアウトを指定する。デフォルトは30秒。
- `--health-start-period`：healthcheckの開始までの待機時間を指定する。デフォルトは0秒。

## サンプル
```bash

docker container run --health-cmd="curl -f http://localhost:8080 || exit 1" --health-interval=5s --health-retries=3 --health-timeout=2s --health-start-period=15s <image_name>

```

## Docker Composeでのhealthcheckの設定方法
```yaml
version: "3.7"

services:
  web:
    image: nginx:latest
    ports:
      - "80:80"
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:8080"]
      interval: 5s
      retries: 3
      timeout: 2s
      start_period: 15s
  
  db:
    image: postgres:latest
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U postgres || exit 1"]
      interval: 5s
      retries: 3
      timeout: 2s
      start_period: 15s
```

## Serviceとhelthcheck
- ヘルスチェックが失敗した場合、Serviceはタスクを置き換える。
- updateでは、各ノードのアップデート時に、ヘルスチェックの結果を待ってから、次のノードにアップデートする。