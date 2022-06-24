# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM

export EDITOR=vim
export VISUAL=vim
export PAGER=vim

PS1=' λ :: \w '

alias v="vim"
alias c="clear"
alias f="nnn -H"
alias t="top"
alias l="ls -a"
alias cm="cmixer"
alias nf="neofetch"
alias reloadsh="source ~/.profile"
alias editsh="vim ~/.profile"

