# 3つのコンテナを違うマシンに用意して、Swarmを使って操作する

## 環境の作り方の方法
- play-with-docker.comで3つのOSを用意する
- VMソフトウェアを使って3つのOSを用意する（昔まではdocker-machineというdockerが公式にサポートしているVMソフトがあったがいまはサポートしていない。）
- クラウドサービスなどを使用して３つのOSを用意する

※VMソフトにはMultipassがおすすめ

※自分はplay-with-docker.comを使用した

# 実行内容

1. リーダのノードを作成する
<hr>

説明：１つのマシーンでSwarmのリーダノードを作成する。<br>

```bash
docker swarm init --advertise-addr <IPアドレス>
```

※IPアドレスは、Swarm initを実行するノードのIPアドレスを指定する

2. nodeを追加
<hr>

説明：リーダノードの以外のマシーンからワーカーノードを追加する。<br>

```bash
docker swarm join --token <token> <IPアドレス>:2377
```

※追加するためのコマンドは「docker swarm init」をしたときに表示されるコマンドを使用することができるので、そのコマンドをコピーして使用するのがおススメ。

3. 追加したnodeをmanagerにする
<hr>

説明：追加したワーカーノードをマネージャーノードにする。<br>

```bash
docker node update --role manager <nodeのID>
```

4. サービスの作成（3つのマシンで同時にコンテナを作成）
<hr>

```bash
docker service create alpine ping 8.8.8.8
```



## その他のよく使ったコマンド

### ノードの確認
<hr>

```bash
docker node ls
```

### joinトークンの確認
<hr>

```bash
docker swarm join-token <role>
```

### Swarmの確認に使える簡易的なコンテナと確認するためのコマンド

```bash
docker service create alpine ping 8.8.8.8
```