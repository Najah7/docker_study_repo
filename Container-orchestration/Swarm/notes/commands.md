# Swarmのコマンド

## Swarmの初期化
<hr>

```bash
docker swarm init
```

## Swarmのノードの確認
<hr>

```bash
docker node ls
```

# Swarmのサービスの作成
<hr>

```bash
docker service create <image>
```

# Swarmのサービスの更新
<hr>

```bash
docker service update <service_name> [<image>]
```

# Swarmのサービスの削除
<hr>

```bash
docker service rm <service_name>
```