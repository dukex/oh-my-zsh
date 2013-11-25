ZSH=$HOME/.oh-my-zsh
ZSH_THEME="duke"
alias ohmyzsh="vim ~/.oh-my-zsh"
plugins=(rails3 sublime git git-flow-avh vagrant gitfast bundler vi-mode)
source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/.go

export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/android/sdk/platform-tools:/android/sdk/tools:$PATH
export PATH=/opt/phonegap-2.7.0/lib/android/bin:$PATH
export PATH=$HOME/.ts/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$PATH:$GOPATH/bin

export LANG=en_US.UTF-8
export LC_ALL=$LANG

export EDITOR=/usr/local/bin/vim

# Alias

alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias psgrep="ps aux | egrep -v egrep | egrep"
alias lock="/System/Library/CoreServices/Menu\ Extras/user.menu/Contents/Resources/CGSession -suspend"
alias top="top -o rsize"
alias cleanup="sudo rm -rf /private/var/log/asl/*"
alias reload='source ~/.zshrc'
alias showme='qlmanage -p "$@" >& /dev/null'
alias gc='git commit -m "$@"'
alias ep='open /android/eclipse/Eclipse.app'
alias git-compare='git difftool -y -x "colordiff -y -W $COLUMNS" | less -R'
alias vundle='vim +BundleInstall +qall'
alias killdns="psgrep dns | awk '{print \$2}' | xargs sudo kill -9"
alias mutt='cd ~/Downloads/ && mutt'

# Config
cdpath=(. ~ ~/code ~/code/github ~/code/bitbucket ~/code/labs)
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

source /Users/duke/code/github/dukex/projectrc/setup
source ~/.oh-my-zsh/resty
