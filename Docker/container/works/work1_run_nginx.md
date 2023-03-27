# Nginxを起動
### コマンド

- フォーグラウンドで起動

```bash
docker container run --publish 80:80 nginx
```

- バックグランドで起動
```bash
docker container run --publish 80:80 --detach nginx
```

※ --publish 80:80 は、ホストのポート80をコンテナのポート80にマッピングするオプション

### 確認方法

[http://localhost](http://localhost)

仕組み
1. nginxイメージをDocker Hubからダウンロード
2. イメージからコンテナを起動
3. ポート80を公開
4. コンテナポートとホストのポートをフォワード。
