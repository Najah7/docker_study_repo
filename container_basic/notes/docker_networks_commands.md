# ネットワーク関係のコマンド

### ネットワークの確認
<hr>

```bash
docker network ls
```
### ネットワークの状態確認
<hr>

```bash
docker network inspect
```

### ネットワークの作成
<hr>

```bash
docker network create --driver
```

### ネットワークに接続
<hr>

```bash
docker network connect <network> <container>
```

```bash
docker network disconnect
```

### コンテナのポートの確認
<hr>

```bash
docker container port <container>
```

## ネットワークで使う代表的なオプション
<hr>
| option | description|
|:--|:--|:--
| --format {{ 形式 }} <contaienr id>| アウトプットのフォーマットを指定|
| --network(--net)| ネットワークを指定する |

※[--formatの詳細](https://docs.docker.com/engine/reference/commandline/inspect/#:~:text=for%20specified%20type-,examples,-Get%20an%20instance%E2%80%99s)

※--networkでよく使う例
- --network=host
- --network=none
- --network=container:<container id>
- --network=<network name>