# MacPorts Installer addition on 2015-07-29_at_13:47:11: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[01;35m\]\u\[\033[01;34m\]@\[\033[01;37m\]\h\[\033[00;35m\]:\[\033[01;34m\]\w\[\033[00m\]\$(parse_git_branch)\$ "

source ~/.git-completion.bash
