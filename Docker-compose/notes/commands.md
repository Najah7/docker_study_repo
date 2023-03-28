# Docker Composeのコマンド

## 全てのコンテナの起動
<hr>

```bash
docker compose up
```

※buildされているイメージがある場合は、それを起動する。buildされていない場合は、buildしてから起動する。

※上記の仕組み的に、docker composeではimageを変更した場合は、rebuildする必要がある。

※ Dockerを使う側がルートのディレクトリで「docker compose up」をすれば使える状態に設定するのが一般的

## 全てのコンテナの停止
<hr>

```bash
docker compose stop
```

## 全てのコンテナの停止と削除
<hr>

```bash
docker compose down
```

## イメージの作成
<hr>

```bash
docker compose build
```

※docker composeでビルドされたイメージは「プロジェクト名_サービス名」で作成される。

※コンテナの名前に関しては、「プロジェクト名_サービス名_数字」