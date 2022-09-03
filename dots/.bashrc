#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

case $TERM in
linux)LANG=C;;
*)LANG=ja_JP.UTF-8;;
esac

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
