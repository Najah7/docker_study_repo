# コンテナはただの軽量なVMではない
- コンテナはただのプロセス：なのでホストで「ps aux」コマンドで確認できる。
- アクセスするリソースに制限をかけれる
- プロセスが終わったら、コンテナも終了する。

# コンテナとWindows

コンテナは、実際にはOSカーネル上で動作する制限されたプロセスに過ぎません。<br>
コンテナ内の実行ファイルは、実行するカーネルに合わせてビルドする必要があります。<br>
例えば、linux/x86_64用にビルドされたPythonイメージは、Windowsカーネル上ではpython.exeとして動作しません。<br>
このため、Docker Desktopでは、コンテナを実行するために軽量のLinux VMを使用しています。

Dockerが誕生した2013年から2016年までは、複数のアーキテクチャ（amd64、arm/v6、arm/v7、i386など）向けのイメージを構築できましたが、Windowsカーネルには対応できませんでした。DockerはLinuxのみ対応していました。

2016年、マイクロソフトの「Windows Containers」のサポートが開始された。
※Appleから「macOS Containers」が出る気配はない。

しかし、WSLでWindows上でも、Linuxベースのイメージを実行しています。

今日のDockerは、Linux以上より強力。<br>
イメージといえば、カーネル(Linux/Windows)とアーキテクチャ(arm64、amd64など)に特化したものであることを覚えておいてください。<br>
Dockerはこれをバックグラウンドで「マニフェスト」を使ってシームレスに実行します。<br>
Docker Engineが稼働しているプラットフォームに最適なイメージをダウンロードするのです。<br>
「docker run --help | grep platform」で、プラットフォームのネイティブカーネルとは異なるイメージを強制する--platformコマンドを確認してください。

このコースでは、95%のコンセプトが同じであるため、依然としてLinux x64イメージに焦点を当てていますが、「Windowsコンテナ」は、Windowsベースのバイナリで実行可能です。技術的には、Windowsカーネル上のDockerコンテナで動作するネイティブWindows .exeバイナリであり、Linuxはインストールされていない。DockerfileのRUNコマンドでPowerShell.exeやCMD.exeを使用します。

Docker Desktop for WindowsでWindowsコンテナモードを有効にするには、Dockerクジラメニューの「Windowsコンテナに切り替える」をクリックすると、WSL2からスリムなWindows VMを動かすHyper-Vに切り替わります。どっちつかずの設定なので、この講座では「Linuxコンテナ」モードに戻してください。

Docker DesktopがないWindows Server 2016以降では、どのコンテナランタイムをインストールするかを選ぶ必要があり、コンテナを実行する方法は2つあります。プロセス分離」モードと呼ばれる、VMを使わずにホストカーネル上でネイティブに実行する方法と、デフォルトの「Hyper-V分離」モードです。分離モードについては[こちら](https://learn.microsoft.com/en-us/virtualization/windowscontainers/manage-containers/hyperv-container)をお読みください。

悲しいことに、Windows Containersが大きく普及することはなかったというのが実情で、それを作成・管理しようとするチームを何年も見てきた結果、Windows Containersの貧弱なサポートと戦い続けるよりも、Linuxをサポートするためにアプリを移行するだけのチームの傾向が見られるようになりました。MicrosoftはWindowsベースのMSSQLイメージまで構築しましたが、その後、2021年にそれを廃止し、LinuxベースのMSSQLイメージに移行しています。

こうした理由と、私のコンサルティングチームが長年にわたってWindows Containersをサポートする際に抱えている課題を見て、私は今でもほとんどのケースでWindows Containersを推奨することができない。私が知っている.NETチームは、コードベースをLinux上の.NET 5に移行し、Linuxコンテナを採用しています。今後、この状況が変わるようであれば、この講義を更新して現在の推奨事項を記載する予定です。