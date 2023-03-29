# Swarmのオプション

## --replicas
冗長化を行うために、複数のコンテナを起動する際に指定するオプション。

```bash
docker service create --replicas 3 <image>
```