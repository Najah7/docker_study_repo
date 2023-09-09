# docker networkコマンド

| コマンド | 説明 |
|:---|:---|
| `docker network ls` | ネットワークの一覧表示 |
| `docker network inspect <network>` | ネットワークの情報表示 |
| `docker network create --driver` | ネットワークの作成 |
| `docker network connect <network> <container>` | ネットワークに接続 |
| `docker network disconnect <network> <container>` | ネットワークから切断 |






## ネットワークで使う代表的なオプション

| option | description|
|:--|:--|:--
| `--format {{ 形式 }} <contaienr id>`| アウトプットのフォーマットを指定|
| `--network(--net)`| ネットワークを指定する |

※[--formatの詳細](https://docs.docker.com/engine/reference/commandline/inspect/#:~:text=for%20specified%20type-,examples,-Get%20an%20instance%E2%80%99s)

※--networkでよく使う例
- --network=host
- --network=none
- --network=container:<container id>
- --network=<network name>