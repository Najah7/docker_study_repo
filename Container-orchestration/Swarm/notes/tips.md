# ベストプラクティス：環境ごとにcomposeファイルを分ける。
- 代表的なファイルの分け方
  - `docker-compose.yml`：ベースファイル
  - `docker-compose.override.yml`：開発環境用のファイル
  - `docker-compose.prod.yml`：本番環境用のファイル
  - `docker-compose.test.yml`：テスト環境用のファイル
  - `docker-compose.ci.yml`：CI環境用のファイル
- ファイルの適用の仕方：`docker-compose -f <ファイル名> up`
  - ファイルの指定の順番で適用される。（基本はベースファイルするために、最初に-fでベースファイルを指定する。）
  - 例：`docker-compose -f docker-compose.yml -f docker-compose.prod.yml up`