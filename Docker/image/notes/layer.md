# イメージのレイヤーについて

## 確認方法
<hr>

```bash
docker history <image>
```

※history出てくるTARGET項目の<missing>はそのイメージ自身を指している。なので、おかしい状態ではない。

### レイヤーについて
Dockerイメージを構成するファイルシステムの一部です。<br>
各レイヤーは、前のレイヤーに変更を加える形で、Dockerイメージに必要なファイルや設定を含んでいます。<br>
Dockerは、イメージのビルド中にレイヤーを作成して、Dockerレジストリにアップロードすることができます。<br>
これにより、Dockerイメージの構成要素を再利用しやすくなり、Dockerイメージのサイズが小さくなります。

Dockerレイヤーは、読み取り専用であり、前のレイヤーの内容を変更することはできません。Dockerは、各レイヤーをオペレーティングシステムのファイルシステムのコピーとして実装しています。<br>
このため、Dockerイメージは、複数のレイヤーを持つことができ、ベースイメージから始めて、アプリケーションコードや依存関係、コンフィギュレーション設定などを含むようにレイヤーを追加することができます。

## Image cacheについて
同じイメージについてはDockerが自動でキャッシュしてくれている。（コンテナ１とコンテナ２でAppacheを使う場合、１or２で一度取得すれば、もう片方の時に取得する必要がない。）
ストレージの節約になる。

## Cacheの仕組み
各レイヤーごとにDockerが記録しており、同じレイヤーの場合記録しないことにより、一度だけホストに記録するようにしている。
そして、レイヤーをまとめて扱うことができる。
同じレイヤーのまとまりをDockerが自動でCacheしてくれる。

※レイヤーとDockerfileのキーワードが対応している。上の行がレイヤー的には下。

※キャッシュの効率性を考えた場合、変更する頻度が少ないものを低レイヤー（Docker file）的には上に書くべき。（上のレイヤーのみを変更した場合、下位レイヤーはキャッシュされているから）