## ```ps aux```
- a: 全てのユーザーのプロセスを表示する。これにより、自分の作成したプロセス以外の全てのプロセスが表示されます。
- u: 詳細情報を表示する。これにより、ユーザー、プロセスID、CPU使用率、メモリ使用量、起動時間などの詳細情報が表示されます。
- x: コントロールターミナル（tty）に関係なく、全てのプロセスを表示する。これにより、バックグラウンドで動作しているプロセスも表示されます。

## ```<command> | grep <keyword>```
出力から特定のキーワードを検索する。

## ``` ifconfig ```
Interface Configration。UNIXやLinuxなどのオペレーティングシステムにおいて、ネットワークインタフェースの状態を表示するためのコマンド


### ``` ping <ip address or domain name> ```
通信の確認につかう。
Dockerの場合「docker container exec -it <container> ping <container>」