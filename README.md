## 前提
- Dockerがインストールされていること
- 一連の操作はDockerfileが存在する階層で実行すること(cdコマンドでDockerfileが存在する階層へ行く)

## イメージをビルド
- **「.」** で、相対的にdockerファイルが存在する階層のパスを指定
- **--no-cache**を使うことで、イメージビルド時にキャッシュを使わない(イメージを削除しなおさなくて良くなる)
  - `docker image build --no-cache -t i_nodejs_practice .`

## コンテナを起動(通常)
<!-- - `docker container run -d --name s_nodejs_practice i_nodejs_practice` -->
- Windowsの場合
  - `docker container run -d --name s_nodejs_practice -v $pwd/app:/work/app i_nodejs_practice`
- MacOSの場合
  - `docker container run -d --name s_nodejs_practice -v "$(pwd)"/app:/work/app i_nodejs_practice`

## コンテナを起動(コンテナの中に入ってからWebサーバを起動するパターン)
- **-it** と **/bin/sh** を追記することで、コンテナが立ち上がり次第、コンテナの中身をCLIで触れる。
  <!-- - `docker container run -it --name s_nodejs_practice i_nodejs_practice sh` -->
- Windowsの場合
  - `docker container run -it --name s_nodejs_practice -v $pwd/app:/work/app i_nodejs_practice sh`
- MacOSの場合
  - `docker container run -it --name s_nodejs_practice -v "$(pwd)"/app:/work/app i_nodejs_practice sh`

## コンテナを再起動
`docker restart s_nodejs_practice`

## 起動中のコンテナを確認
`docker container ps`

## 停止中のコンテナも含めて確認
`docker container ps -a`

## 起動中のコンテナを削除
`docker rm -f s_nodejs_practice`

## 存在しているイメージを確認
`docker image ls`

## イメージを削除
`docker rmi i_nodejs_practice`
