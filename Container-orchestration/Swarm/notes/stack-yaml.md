# Swarm Stack YAML

## 違い
- `deploy`が追加されている。
- `build`が削除されている。

## サンプルコード

```yaml
version: '3.9'

services:
  web:
    image: nginx:alpine
    ports:
      - "80:80"
    deploy:
      replicas: 3
      placement:
        constraints: [node.role == worker]

  db:
    image: postgres:12
    environment:
      POSTGRES_PASSWORD: mypassword
    deploy:
      replicas: 1
      placement:
        constraints: [node.role == manager]

```