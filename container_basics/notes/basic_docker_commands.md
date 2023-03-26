## Dockerコマンドの確認方法
```bash
docker --help
```

### Dockerのバージョン確認（インストールされているかの確認にも使える）
<hr>

```bash
docker version
```

###　Dockerの詳細情報確認
<hr>

```bash
docker info
```

### コマンドの確認
<hr>

```bash
docker --help 
    or 
docker
```

### Docker Hubにログイン
<hr>

```bash
docker login <server>
```

※\<server\>を指定しない場合、デフォルトのサーバに

### Docker Hubをログアウト

```bash
docker logout 
```

### Docker コマンドの基本構造
<hr>

```bash
new: docker <sub-command> (options) 
    or
old: docker <command> (options)
```
### dockerのシステム（イメージとコンテナ）に対するコマンド
<hr>

```bash
docker system <sub-command> (options)
```

### dockerのシステム（イメージとコンテナ）の情報を確認
<hr>

```bash
docker system df
```