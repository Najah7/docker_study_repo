# Docker Compose
Dockerアプリケーションを定義し、複数のDockerコンテナを1つのアプリケーションとして実行するためのツール。<br>
複数のDockerコマンドを一つにまとめるというのがミソ。

# docker-compose.ymlについて
- docker-compose.ymlは、複数のコンテナを起動するための設定ファイル。
- YAML形式で記述されている。
- 「1」「２」「2.1」「3」「3.1」のバージョンがある。
- docker-composeコマンドを使って、実行する。
- docker-compose.ymlがデフォルトの名前（-fオプションを使うことで任意のファイル名でも起動できる。）

# docker-compose.ymlの書式
[このファイルを参照](../sample/compose-sample-1/template.yml)

# docker-compose.ymlに記述すること
- コンテナ同士の依存関係
- コンテナの起動順
- コンテナの環境変数
- コンテナのボリューム
- コンテナのネットワーク
- コンテナのリソース制限
- コンテナの再起動ポリシー

# docker-composeの利点
- 複数の起動コマンドを覚える必要がない（一つの起動コマンドで実行できる。）