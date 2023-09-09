# Docker Composeのコマンド

| コマンド | 説明 |
|:---|:---|
| docker compose up | 全てのコンテナを起動する |
| docker compose stop | 全てのコンテナを停止する |
| docker compose down | 全てのコンテナを停止して削除する |
| docker compose build | イメージを作成する |

## 代表的なオプション

| オプション | 説明 |
|:---|:---|
| -d | バックグラウンドで実行する |
| --build | イメージを作成する |
| --no-build | イメージを作成しない |
| --force-recreate | コンテナを再作成する |
| --no-recreate | コンテナを再作成しない |
| --no-deps | 依存関係のあるコンテナを起動しない |
| --scale | コンテナの数を指定して起動する |

## upの注意点
- buildされているイメージがある場合は、それを起動するので、imageを変更した場合は、rebuildする必要がある。
- Dockerを使う側がルートのディレクトリで「docker compose up」をすれば使える状態に設定するのが一般的。変な引数が必要な状態にしないようにする。

※docker composeでビルドされたイメージは「プロジェクト名_サービス名」で作成される。

※コンテナの名前に関しては、「プロジェクト名_サービス名_数字」