# ubuntu_docker
自分用に作成
ubuntuでDocker-CEを使いたいときに実行するシェルスクリプト(18.04で動作確認済)
[公式のドキュメント](https://docs.docker.com/install/linux/docker-ce/ubuntu/)にある情報 & 現在のユーザーでdockerコマンド実行時にsudoを不要にするだけ  
docker-composeも一緒に入る

## やりかた
適当なディレクトリで以下のコマンドを実行

```bash
git clone https://github.com/nagashima-w/ubuntu_docker.git; chmod +x ./ubuntu_docker/install_docker_ubuntu.sh; ubuntu_docker/install_docker_ubuntu.sh
```

※sudoを使うので途中でパスワードを求められる

シェルスクリプトが完了したら、いったん `exit` して再ログインすればsudo不要でdockerコマンド実行可能
