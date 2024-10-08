#!/bin/bash
# echo $SHELL

apt update
apt install sudo
sudo apt update
apt install -y curl
echo 'nodejsインストール'
# nodejsの公式リポジトリを追加
  # -f:エラーが発生した場合、curlはエラーメッセージを出力し、失敗として終了する
  # -s:サイレントモードで実行し、進捗などを表示しない
  # -S:エラーが発生した場合にはエラーメッセージを表示する
  # -L:リダイレクトがあればそれに従う
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt -y install nodejs
nodejs -v
npm -v
echo 'TypeScriptのコンパイラ'
npm install -g typescript

# 参考記事
# node.jsをインストールする方法 => https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04-ja
# linux上にnode.jsをインストールする方法 => https://qiita.com/studio_meowtoon/items/111f556d8fb11a76430a
