# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

function nonzero_return() {
    RETVAL=$?
    [ $RETVAL -ne 0 ] && echo "[$RETVAL]"
}
export PS1="\[\e[m\]\d \t [\[\e[34m\]\u\[\e[m\]@\[\e[32m\]\w\[\e[m\]]\\$\[\e[31m\]\`nonzero_return\`\[\e[m\] \[\e[1;33m\]"

export EDITOR=gedit
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTCONTROL=ignoreboth

trap 'printf "\e[0m" "$_"' DEBUG
