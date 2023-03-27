## コンテナ用のコマンドの確認方法
<hr>

```bash
docker container --help
```

### Containerの確認
<hr>

- 起動中のContainerを確認

```bash
docker container ls
```
- 全てのContainer(停止中も)を確認

```bash
docker container ls -a
```

### Container停止
<hr>

```bash
docker container stop <container id>
```

###　Containerの起動
<hr>

- フォーグラウンドで起動
```bash
docker container start <container id>
```
- バックグランドで起動
```bash
docker container start --detach <container id>
```

- 名前を付けて起動
```bash
docker container start --name <container name> <container id>
```

※runの場合は新しくコンテナを作成して起動。

### Containerの削除
<hr>

```bash
docker container rm <container id> <container id> ...
```
```

### Containerのログ確認
<hr>

```bash
docker container logs <container id>
```

### Containerのプロセス確認
<hr>

```bash
docker container top <container id>
```

### Containerの状態確認(Configurationを確認できる。)
<hr>

```bash
docker container inspect <container id>
```

### Containerのリソース使用状況確認
<hr>

```bash
docker container stats <container id>
```
### Containerを一括削除
<hr>

```bash
docker container prune
```