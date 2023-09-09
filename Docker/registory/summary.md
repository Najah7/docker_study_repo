# Container Registories

# Docker Hub
- 一番populerなpublicなイメージレジストリ

## Docker Hubの特徴
- GitHubやBitbucketとリンクすることでコミットをトリガーにイメージをビルドできる（Automated Build）。Dockerfileをリポジトリに置くだけで、自動でビルドしてくれる。また更新も自動で行ってくれる。
- 複数のイメージを組み合わせて、新しいイメージを作成できる
- privateのイメージも作成できる（pullできる人をPermissionで制限できる）
- Web Hookを使って、イメージのビルドをトリガーできる
- Organizationを作成して、複数のユーザーでイメージを管理できる


## Own Docker Registry
- Docker Hubの代わりに自分でDocker Registryを立てることもできる
- `docker/distibution`というGitHub Repoがあり、これを使ってDocker Registryを立てることができる
- 基本的にはGUIはなく、Auth機能のみ
- Goでの「API＋Storage System」で構成されている
- Storage Systemでは下記をサポートしている
    - Amazon S3
    - Azure Blob Storage
    - Google Cloud Storage
    - Alibaba Cloud OSS
    - OpenStack Swift
    - Local filesystems
- TLSを使って通信することができる
- ガベージコレクション機能がある
- `--registry-mirror`オプションを使って、Docker Hubのイメージをキャッシュすることができる。いちいち、Docker Hubにアクセスしなくても、ローカルにキャッシュしてくれるので、高速にイメージをpullできる（特にクラスター環境などで複数回Hubにしなくていいので有効）

## Own Private Docker Registry
- Docker Hubはpublicなので、privateなイメージを管理したい場合は、自分でDocker Registryを立てることも可能。
- 自分のローカルレポジトリで所有しているイメージを配信するレポジトリを作成できる
- 存在するイメージにタグをつけ直す必要がある（ex) `localhost:5000/myimage:latest`）
- レジストリのポートは：`5000`
- `docker push`でイメージをレジストリにpushできる
- デフォルトの場合、HTTPSでないと通信できない（ローカルホストの場は例外）
- TLSを使って通信するには、`--tlsverify`オプションを使う
- `docker run -d -p 5000:5000 --restart=always --name registry registry:2`で起動できる