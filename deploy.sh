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
