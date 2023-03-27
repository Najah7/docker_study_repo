# 課題：3つのコンテナを起動＆削除する

### Hint
- use -d

# Answer

## MySQL

```bash
docker container run -d -p 3306:3306 --name db-mysql -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
```

※「docker container logs」を使ってMySQLのroot passwordを確認できる（GENERATED ROOT PASSWORDで検索かけたらすぐに見つかる）

## Apache

```bash
docker container run -d -p 8080:80 --name web-apache httpd
```

## Nginx

```bash
docker contaienr run -d -p 80:80 --name web-nginx nginx
```

## Ubuntu

```bash
docker container run -it --name test-ubuntu ubuntu
```


#### port Notes
- nginx: 80:80
- httpd(Apache): 8080:80
- mysql: 3306:3306