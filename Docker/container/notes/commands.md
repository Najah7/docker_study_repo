# docker containerコマンド
| コマンド | 説明 |
|:---|:---|
| `docker container ls` | コンテナの一覧表示 |
| `docker container run` | コンテナの作成と起動 |
| `docker container start <container id>` | コンテナの起動 |
| `docker container stop <container id>` | コンテナの停止 |
| `docker container rm <container id>` | コンテナの削除 |
| `docker container inspect <container id>` | コンテナの情報表示 |
| `docker container port <container>` | コンテナのポートの確認 |
| `docker container logs <container id>` | コンテナのログ表示 |
| `docker container exec <container id> <command>` | コンテナ内でコマンドを実行 |


# 代表的なオプション
| オプション | 説明 |
|:---|:---|
| `-a` | 全てのコンテナを表示する |
| `-d` | バックグラウンドで実行する |
| `-it` | コンテナの標準入出力を接続する |
| `-p` | ホストのポートをコンテナのポートにフォワードする |
| `--rm` | コンテナを終了したら削除する |
| `--name` | コンテナに名前を付ける |
| `-v` | コンテナの詳細を表示する |
| `--format` | 表示する情報をフォーマットする |
| `--help` | ヘルプを表示する |
| `--no-trunc` | 結果を切り捨てずに表示する |
| `--sort` | 表示する項目をソートする |
| `-l` | 最後のコンテナのみを表示する |
| `-n` | 最新のn個のコンテナを表示する |
| `-f(--filter)` | フィルターを指定する |
| `-q(--quiet)` | コンテナIDのみを表示する |
| `-s(--size)` | コンテナのサイズを表示する |
| `-t` | コンテナの作成日時でソートする |