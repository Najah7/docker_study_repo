# イメージ関係のコマンド

## イメージの一覧を表示
<hr>

```bash
docker image ls
```

## イメージを取得
<hr>

```bash
docker pull <image>
```

## imageのビルド
<hr>

```bash
docker image build <path>
```

## imageの削除
<hr>

```bash
docker image rm <image>
```

## imageの一括削除
<hr>

```bash
docker image prune
```

## イメージの履歴表示(レイヤーの履歴が見れる)
<hr>

```bash
docker history <image>
```

## イメージの詳細情報を取得（メタデータ）
<hr>

```bash
docker inspect <image>
```

## イメージにタグを設定
<hr>

```bash
docker image tag <image[:tag]> <image[:new_tag]>
```
## imageのアップロード
<hr>

```bash
docker image push <image(tag)>
```



