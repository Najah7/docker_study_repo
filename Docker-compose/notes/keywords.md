# docker-compose.ymlで使うキーワード

# キーワードについて
基本的にキーワードはDockerコマンドオプションに対応している。<br>
なので、Dockerコマンドとyamlの書式さえ覚えれば、ほぼOK。

# 下記で説明するキーワードを階層構造でまとめると
- version
- services
  - build
    - context
    - dockerfile
  - networks
  - environment
  - ports
  - command
  - restart
- volumes

# version
docker-composeファイルのバージョンを指定します。

# services
実行するDockerコンテナの定義を記述します。各コンテナには、image、build、ports、environment、volumes、depends_onなどのプロパティがあります。

# build
ビルドするイメージを指定する。<br>
ローカルのカスタムイメージを使う場合などに使う。(Docker Hubから取得するときなどは使わない)<br>

### buildのキーワード
- context: ビルドするDockerfileのあるディレクトリを指定する。
- dockerfile: ビルドするDockerfileの名前を指定する。

# networks
コンテナを接続するネットワークを定義します。ネットワークには、bridge、host、none、または自分で作成したカスタムネットワークを使用できます。

# environment
環境変数を定義します。

# ports
ポートマッピングを定義します。

# command
コンテナで実行するコマンドを指定します。

# restart
コンテナがクラッシュした場合の再起動ポリシーを定義します。
- no: 再起動しない
- always: 常に再起動する
- on-failure: エラーが発生した場合に再起動する
- unless-stopped: コンテナが停止した場合に再起動する

# volumes
コンテナが使用するデータボリュームを定義します。ボリュームには、ローカルファイルシステム、リモートストレージ、または自分で作成したカスタムボリュームを使用できます。