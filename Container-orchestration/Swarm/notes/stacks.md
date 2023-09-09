# Swarm Stacks
- Service + Network + Volume + Secret + Config
- Swarm Stacksは、Docker Composeファイルを使用して、複数のコンテナを定義し、それらをSwarm上にデプロイするための機能。
- Swarm Stacksを使用すると、複数のコンテナを1つのアプリケーションとして定義することができます。
- これにより、アプリケーションの構成と管理が容易になります。
- Stacksは、アプリケーションの更新や変更の際にも役立ちます。
- Stacksを使用すると、アプリケーションの変更がSwarm上で自動的に更新されます。

Swarm Stacksは、複数のサービスを1つのアプリケーションとして定義することができます。これにより、アプリケーションの構成と管理が容易になります。Stacksは、アプリケーションの更新や変更の際にも役立ちます。Stacksを使用すると、アプリケーションの変更がSwarm上で自動的に更新されます。

Swarm Stacksは、高可用性やロードバランシングなど、複数のコンテナを使用するアプリケーションのデプロイに最適です。Swarm Stacksを使用することで、よりスケーラブルで信頼性の高いアプリケーションを作成することができます。

※composeファイルのバージョンは3以上である必要がある。

※Docker fileでComposeはdeployを無視し、Swarm Stacksのbuildを無視する。