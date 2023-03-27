# ボリューム関係のコマンド

## ボリュームの作成
<br>
```bash
docker volume create <volume name>
```

## ボリュームの削除
<br>
```bash
docker volume rm <volume name>
```

## ボリュームの確認
<br>
```bash
docker volume ls
```

## ボリュームの詳細情報確認
<br>
```bash
docker volume inspect <volume name>
```

※これでボリュームの位置などが確認できる。

## containerの起動時にボリュームをマウントする
<br>
```bash
docker container run -it --name <container name> --mount source=<volume name>,target=<container path> <image name>
```

## containerの起動時にボリュームをマウントする(ショートハンド)
<br>
```bash
docker container run -it --name <container name> -v <volume name>:<container path> <image name>
```

