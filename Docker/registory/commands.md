# Own Docker Registry

## レジストリの起動

```bash
$ docker run -d -p 5000:5000 --restart=always --name registry registry:2

# volumeをマウントして起動する場合
$ docker run -d -p 5000:5000 --restart=always --name registry -v /path/to/registry:/var/lib/registry registry:2

# TLSを使って通信する場合
$ docker run -d -p 5000:5000 --restart=always --name registry -v /path/to/registry:/var/lib/registry -v /path/to/certs:/certs -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key registry:2
```

## イメージにタグを設定

```bash
$ docker tag <image> localhost:5000/<image>
```

## レジストリにイメージをpush

```bash
$ docker push localhost:5000/<image>
```

## レジストリにpushしたイメージをpull

```bash
$ docker pull localhost:5000/<image>
```