# Append "$1" to $PATH when not already in.
# Copied from Arch Linux, see #12803 for details.
append_path () {
	case ":$PATH:" in
		*:"$1":*)
			;;
		*)
			PATH="${PATH:+$PATH:}$1"
			;;
	esac
}

append_path "/usr/local/sbin"
append_path "/usr/local/bin"
append_path "/usr/sbin"
append_path "/usr/bin"
append_path "/sbin"
append_path "/bin"
unset -f append_path

export PATH
export PAGER=less
umask 022

# use nicer PS1 for bash and busybox ash
if [ -n "$BASH_VERSION" -o "$BB_ASH_VERSION" ]; then
	PS1='λ :: \w '
# set up fallback default PS1
else
	: "${HOSTNAME:=$(hostname)}"
	PS1='λ :: $PWD'
	[ "$(id -u)" -eq 0 ] && PS1="${PS1}# " || PS1="${PS1}\$ "
fi
export PS1

for script in /etc/profile.d/*.sh ; do
	if [ -r "$script" ] ; then
		. "$script"
	fi
done
unset script

alias v="nvim"
alias f="nnn -H"
alias c="clear"
alias h="htop"
alias l="ls -a"
alias ls="ls -a"
alias am="alsamixer"
alias nf="neofetch"
alias sf="neofetch"
alias reloadash="source ~/.profile"
alias editash="nvim ~/.profile"
