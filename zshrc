ZSH=$HOME/.oh-my-zsh
ZSH_THEME="duke"
alias ohmyzsh="vim ~/.oh-my-zsh"
plugins=(rails3 sublime gitflow gitfast bundler vi-mode)
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /etc/bash_completion.d/todo

export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/android/sdk/platform-tools:/android/sdk/tools:$PATH
export PATH=/opt/phonegap-2.7.0/lib/android/bin:$PATH
export PATH=$HOME/.ts/bin:$PATH
export PATH=$HOME/bin:$PATH

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

# Config
cdpath=(. ~ ~/code ~/code/github ~/code/bitbucket ~/code/labs)
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
