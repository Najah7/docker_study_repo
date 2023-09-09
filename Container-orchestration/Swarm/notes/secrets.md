# Swarm Secrets 
- Swarmに登録した秘密情報を、任意のコンテナに共有できるもの。
- Swarm Secretsは、Docker Swarm上で安全に秘密情報を管理するための機能。
- Swarm Secretsを使用すると、コンテナに秘密情報を直接渡すことなく、秘密情報を安全に管理することができます。
- Swarm stacksを使用する場合は「secrets」キーワードを使用する。デプロイは、シークレットを使わないときと同じ。
- Docker1.13.0からデフォルトでRaft DBが暗号化されて保存されるようになり、それを活用してSwarm Secretsを実現している。（managerのノードに保存される）
- 最初にSwarmにsecretを保存して、それが他のサービスにも割り当てられる。

※docker-composeでファイルベースでシークレットを共有することもできる。しかし、セキュアではない。(ファイルの場所を表記する方法ならOK)

※ 「`/run/secrets/<secret_name>` or `run/secrets/<secret_alias>`」のファイルのような感じでマウントされる。（本当はメモリに）

## Swarm SecretsのDocker Composeでの設定方法

```yaml
services:
  web:
    image: nginx:latest
    ports:
      - "80:80"
    environment:
      MYSQL_ROOT_PASSWORD_FILE: /run/secrets/my_secret
```

```yaml
services:
  web:
    image: nginx:latest
    ports:
      - "80:80"
    secrets:
      

# NOTE: こっちの場合、パスが/run/secrets/の下になる
secrets:
  my_secret:
    file: ./my_secret.txt
```

# ローカルのComposeでのシークレットの設定方法
- ローカルのComposeでのシークレットの設定方法は、Docker Swarmと同じで実現できる。(Composeファイルにsecretを書いたり)
