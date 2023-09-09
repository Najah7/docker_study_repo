# Swarmのコマンド

## docker swarmコマンド
Swarmの管理コマンド
| コマンド | 説明 |
|:---|:---|
| `docker swarm init` | Swarmの初期化 |
| `docker swarm join` | Swarmの参加 |
| `docker swarm join-token <worker|manager>` | Swarmのトークンの表示 |
| `docker swarm leave` | Swarmの脱退 |
| `docker swarm update` | Swarmの更新 |
| `docker swarm unlock` | Swarmのロック解除 |

## docker nodeコマンド
Swarmのノードの管理コマンド
| コマンド | 説明 |
|:---|:---|
| `docker node ls` | Swarmのノードの一覧表示 |
| `docker node inspect` | Swarmのノードの情報表示 |
| `docker node rm` | Swarmのノードの削除 |
| `docker node update` | Swarmのノードの更新 |

## docker networkコマンド
Swarmのネットワークの管理コマンド
| コマンド | 説明 |
|:---|:---|
| `docker network ls` | Swarmのネットワークの一覧表示 |
| `docker network inspect` | Swarmのネットワークの情報表示 |
| `docker network rm` | Swarmのネットワークの削除 |
| `docker network create` | Swarmのネットワークの作成 |

## docker serviceコマンド
Swarmのサービスの管理コマンド
| コマンド | 説明 |
|:---|:---|
| `docker service create <image>` | Swarmのサービスの作成(自動的にNodeも作成される) |
| `docker service ls` | Swarmのサービスの一覧表示 |
| `docker service rm <service_name>` | Swarmのサービスの削除 |
| `docker service update <service_name> <image>` | Swarmのサービスの更新 |


## docker secretコマンド
SwarmのSecretの管理コマンド
| コマンド | 説明 |
|:---|:---|
| `docker secret create <secret_name> <secret_file>` | SwarmのSecretの作成 |
| `docker secret ls` | SwarmのSecretの一覧表示 |
| `docker secret inspect <secret_name>` | SwarmのSecretの情報表示 |
| `docker secret rm <secret_name>` | SwarmのSecretの削除 |

※`echo <secret> | docker secret create <secret_name> -`でもOK

## docker configコマンド
SwarmのConfigの管理コマンド
| コマンド | 説明 |
|:---|:---|
| `docker config create <config_name> <config_file>` | SwarmのConfigの作成 |
| `docker config ls` | SwarmのConfigの一覧表示 |
| `docker config inspect <config_name>` | SwarmのConfigの情報表示 |
| `docker config rm <config_name>` | SwarmのConfigの削除 |

※`echo <config> | docker config create <config_name> -`でもOK
※`docker compose config`で作成したコンフィグファイルを使用することもできる。
※confingで指定しない場合：`/run/configs/<config_name>`に保存される。

## docker stackコマンド
SwarmのStackの管理コマンド
| コマンド | 説明 |
|:---|:---|
| `docker stack deploy -c <file> <name>` | SwarmのStackのデプロイ（-c：--compose-file） |
| `docker stack services <stack>` | SwarmのStackのサービスの一覧表示 |
| `docker stack ps <stack>` | SwarmのStackのタスクの一覧表示 |
| `docker stack rm` | SwarmのStackの削除 |

## docker scaleコマンド
Swarmのサービスのスケールアップ or スケールダウンをするためのコマンド
| コマンド | 説明 |
|:---|:---|
| `docker scale <service_name>=<number>` | Swarmのサービスのスケールアップ or スケールダウンをするためのコマンド |

## Swarmの代表的なオプション
| オプション | 説明 |
|:---|:---|
| `--help` | ヘルプを表示する |
| `--format` | 表示する情報をフォーマットする |
| `--replicas` | 冗長化を行うために、複数のコンテナを起動する際に指定するオプション |