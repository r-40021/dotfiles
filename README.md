# Dotfiles

# 動作環境
- Arch Linux

パッケージのインストール処理の部分を変えれば、他のディストリビューションでも多分動きます。  
(Macでも動くかもしれません。)

# デプロイ
このリポジトリをホームディレクトリにクローンし、`dotfiles` ディレクトリに移動した後、以下のコマンドを実行してください。

```bash
sh deploy.sh
```

以下のファイルのシンボリックリンクがホームディレクトリに作成されます。

- .bash_profile
- .bashrc
- .gitconfig
- .zshrc
- update.sh (yayを用いてパッケージを更新する自作シェルスクリプト)

さらに、以下のことも行われます。

- `~/.config/fontconfig/fonts.conf` の生成。Manjaro等では日本語UIフォントがきれいになります。(別途DE側での設定が必要な場合あり)
- pacmanを使用したパッケージのインストール
- デフォルトシェルをzshに変更
- yayのインストール

# パッケージ一覧
`packages/pkglist.txt` にpacmanでインストールしたパッケージの一覧が記載されています。

# 他にやっておいたほうが良いこと
以下の設定は手動で行う必要があります。

- Gitの各種設定
```bash
git config --global user.name YOUR_NAME
git config --global user.email YOUR_EMAIL
```

- GPG鍵の発行・登録  
参考→[[Git] GitHubにGPG鍵を登録し署名付きcommit/tagを行う](https://blog.katsubemakito.net/git/github-gpg)  
(Linuxで行う場合は適宜読み替える必要あり)
