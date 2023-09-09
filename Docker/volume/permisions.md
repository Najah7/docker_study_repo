# 複数のコンテナで同じボリュームを共有する場合に起きる可能性のあるパーミッションの問題について

# 前提
- ピュアなサーバなどの話
- WindowsやMacなどではインストール時に自動でいい感じにパーミッションを変更してくれていることが多い。（Docker Descktopなどのインストール時）

# 発生する可能性のある問題
- コンテナ間で`/etc/passwd`が異なる。<br>
たとえば、同じユーザ名を付けたとしても、permissionに関しては、IDをベースに判断しているので、IDが異なれば、permissionの問題が起きる可能性がある。
- 異なる2つのコンテナが異なるユーザによって実行されている。

## 解決策
ps auxコマンドを使用してプロセスとユーザー名のリストを表示して、問題のファイルにはアクセスするために一致するユーザーIDまたはグループIDを作る。

## 例（Node）
```
RUN groupadd --gid 1000 node ㊤。
        && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
USER 1000:1000
```

注：DockerfileのUSERを設定する場合、Kubernetesでは名前を使うよりも数字を使った方がうまくいきます。

注2：psがコンテナで動作しない場合、インストールが必要な場合があります。aptを使用したdebianベースのイメージでは、apt-get update && apt-get install procpsで追加することができます。