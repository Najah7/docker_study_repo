# イメージとは
ファイルシステム＋メタデータ

# イメージに含まれているもの
- アプリのバイナリファイルと依存のパッケージ
- イメージとイメージの動かし方のメタデータ
- iコンテナランタイム内で使用するための、ルートファイルシステムの変更とそれに対応する実行パラメーターの順序付けられたコレクション(Not complete OS, No kernel, kernel modules(e.g.drivers))

# イメージの種類
- 小さなファイル。（基本1機能）
- 大きなファイル（Ubuntu + Apache + PHP ...など複数のものをまとめた）

# Docker Hubとは
- イメージを保管するリポジトリ（GitHubのImage版）
- officialは一つだけ。
- 基本はofficialを使うのがおすすめ（ドキュメントが充実していることが多いから）
- official以外を使う場合は、pullの数とstarの数を参考にするのがいい。多い方が信頼できる。
※Officialはシンプルなものが多いので、自分でイメージを作成するときなどにいい。

※[list of officel images](https://github.com/docker-library/official-images/tree/master/library)