#!/bin/sh

dotfiles_root=$(pwd)

# dotfilesディレクトリの中身のリンクをホームディレクトリ直下に作成
cd ${dotfiles_root}/dots
for file in .*; do
    # 除外
    [[ ${file} = "." ]] && continue
    [[ ${file} = ".." ]] && continue
    ln -s ${PWD}/${file} ${HOME}
done

# font設定
cd ${dotfiles_root}/fonts
for file in *; do
    # 除外
    [[ ${file} = "." ]] && continue
    [[ ${file} = ".." ]] && continue
    ln -s ${PWD}/${file} ${HOME}/.config/fontconfig/
done

# シェルスクリプト類
cd ${dotfiles_root}/scripts
for file in *.sh; do
    # 除外
    [[ ${file} = "." ]] && continue
    [[ ${file} = ".." ]] && continue
    ln -s ${PWD}/${file} ${HOME}
done

# etc内
cd ${dotfiles_root}/etc
for file in *; do
    # 除外
    [[ ${file} = "." ]] && continue
    [[ ${file} = ".." ]] && continue
    sudo ln -s ${PWD}/${file} /etc
done

# パッケージインストール(Pacman)
sudo pacman -S --needed - < ${dotfiles_root}/packages/pkglist.txt

# デフォルトシェルをzshにする
chsh -s $(which zsh)

# yayのインストール
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd ${PWD}/yay
makepkg -si
rm -rf ${PWD}/yay
