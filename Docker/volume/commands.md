# docker volumeコマンド

| コマンド | 説明 |
|:---|:---|
| `docker volume create <volume name>` | ボリュームの作成 |
| `docker volume rm <volume name>` | ボリュームの削除 |
| `docker volume ls` | ボリュームの一覧表示 |
| `docker volume inspect <volume name>` | ボリュームの詳細情報表示 |
| `docker volume prune` | 未使用のボリュームの削除 |

# ボリューム関係のオプション

| オプション | 説明 |
|:---|:---|
| `--mount source=<volume name>,target=<container path>`| ボリュームのマウント(「=」でも可) |
| `-v(--volume) <volume name>:<container path>` | ボリュームのマウント |

※`docker container run`のオプションとして使用する。