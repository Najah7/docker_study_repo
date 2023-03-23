# コンテナへの接続にSSHは必要ない。

### 新しいコンテナを起動してターミナルを起動

```bash
docker container run -it <image name> <command>(bashを使うことが多い)
```

### すでにあるコンテナに追加のコマンドを実行、そしてターミナルを起動

```bash
docker container exec -it <container id> <command>
```

## NOTE: alpineではbashがないので、shを使う


