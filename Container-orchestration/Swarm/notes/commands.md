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

# stackをデプロイ
<hr>

```bash
docker stack deploy -c <compose_file> <stack_name>
```

※compose fileを更新した場合も同じコマンドで更新できる

# サービスの一覧を表示
<hr>

```bash
docker stack services <stack_name>
```

# タスクの一覧を表示

<hr>

```bash
docker stack ps <stack_name>
```

# シークレットの作成
<hr>

```bash
docker secret create <secret_name> <secret_file>
```

# シークレットの一覧を表示
<hr>

```bash
docker secret ls
```

# シークレットの情報を表示
<hr>

```bash
docker secret inspect <secret_name>
```

