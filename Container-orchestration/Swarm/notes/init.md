## Swarmのinitで行われること
- PKIとセキュリティの自動設定
 - ルートの認証書を作成
 - 最初のマネージャーノードに認証書を発行
 - Join tokenを作成
- root CAとconfigとsecretsを管理するための Raft databaseを作成