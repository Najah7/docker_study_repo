# Swarm

## Swarmとは
Docker Descktopのビルインのコンテナオーケストレーションツール。

## Swarmの構成要素
- Swarm Manager(Manager Node)：クラスター（workerの集まり）の管理を行う
- Swarm Worker (Worker Node)：コンテナの実行を行う

## Swarmの仕組み
-----Manager Node-----------
1. コマンドを実行してサービスを作成（API）
1. サービスとタスクを指定の個数分作成（数量分loopする）（オーケストラー）
1. タスクにIPアドレスを割り当てる（アロケータ）
1. ノードにタスクを割り当てる（スケジューラ）
1. workerをチェックする（ディスパッチャ）<br>

--------Worker Nodo----------

6. 割り当てられたタスクを確認するためにManager Nodeのディスパッチャに接続する（Worker）
7. 割り当てられたタスクを実行。（Executor）

## Swarmのinitで行われること
- PKIとセキュリティの自動設定
 - ルートの認証書を作成
 - 最初のマネージャーノードに認証書を発行
 - Join tokenを作成
- root CAとconfigとsecretsを管理するための Raft databaseを作成

