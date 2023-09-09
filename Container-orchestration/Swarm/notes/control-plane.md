# Control Plane
Dockerクラスターの状態を管理し、クラスター内の各ノードとの通信を担当するコンポーネントのこと。

クラスター内のすべてのノードの状態を管理するために使用されるいくつかのコンポーネントが含まれています。これらには、etcdやRaftなどの分散ストレージシステム、Swarm Manager、リバースプロキシなどが含まれます。これらのコンポーネントが連携して、Docker Swarmモードで高可用性、負荷分散、およびフェイルオーバーを提供します。(ほかにも、TLSやMutal Authの機能も)

## Control Planeに含まれているコンポーネント
- Swarm Manager: Swarm Managerは、クラスター内のノードを監視し、コンテナーのデプロイやスケーリング、ネットワーキングなどのタスクを管理するための中央の制御ポイントです。Swarm Managerは、クラスターの全体像を理解し、コンテナーのプレイスメントに関する決定を下すことができます。

- Raftデータベース: Raftデータベースは、Swarm Managerの状態を保存するために使用されます。Raftは、分散一貫性のあるログと状態マシンを提供する一般的な分散一貫性のあるアルゴリズムです。

- etcd: etcdは、分散キー/値ストアであり、Swarm Managerの状態を保存するために使用されます。etcdは、Swarm Managerのハイアベイラビリティをサポートするために複数のレプリカで実行されます。

- DNSサービスディスカバリ: DNSサービスディスカバリは、コンテナーに割り当てられた名前を解決するために使用されます。Docker Swarmは、コンテナーが動的に生成されるため、DNSを使用してコンテナーを特定する必要があります。

- ロードバランサー: ロードバランサーは、入力トラフィックを受信し、クラスター内のコンテナーにトラフィックを分配するために使用されます。Docker Swarmでは、Nginx、HAProxy、またはDocker Flow Proxyなどのロードバランサーを使用できます。