# docker-compose.yml

# キーワード

## キーワードについて
基本的にキーワードはDockerコマンドオプションに対応している。<br>
なので、Dockerコマンドとyamlの書式さえ覚えれば、ほぼOK。

## キーワードの表

| キーワード | 説明 |
|:---|:---|
| version | docker-composeファイルのバージョンを指定する |
| services | 実行するDockerコンテナの定義を記述する |
| build | ビルドするイメージを指定する |
| networks | コンテナを接続するネットワークを定義する。brige/ host/ none/ 自作のネットワークを使用できる。|
| environment | 環境変数を定義する。key: valueの形式で記述する。 |
| ports | ポートマッピングを定義する。 ホスト側のポート: コンテナ側のポート |
| command | コンテナで実行するコマンドを指定する |
| restart | コンテナがクラッシュした場合の再起動ポリシーを定義する。no/ always/ on-failure/ unless-stopped |
| volumes | コンテナが使用するデータボリュームを定義する |

## 下記で説明するキーワードを階層構造でまとめると
- version
- services
  - image
  - build
    - context
    - dockerfile
  - networks
  - environment
  - ports
  - command
  - depends_on
  - restart
- volumes

## Tip
公式のDockerfileのvolumeを見ると、そのDatabaseのデフォルトのボリュームの配置場所を知れる。