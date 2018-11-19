export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
export LC_ALL=en_US.UTF-8
# Config for tmux
if [ "$TERM" == "screen" ] && [ -n "$TMUX" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

. ~/git-prompt.sh
PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\
\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W \[\033[35m\]\
$(__git_ps1 "(%s) ")\[\033[31m\]\[\033[00m\]\$ '
. ~/git-completion.sh

encrypt() {
  openssl enc -aes-256-cbc -salt -in "$1" -out "$1.enc"
}

decrypt() {
  openssl enc -d -aes-256-cbc -in "$1" -out "$1.dec"
}
