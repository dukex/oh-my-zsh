ZSH=$HOME/.oh-my-zsh
ZSH_THEME="duke"
alias ohmyzsh="vim ~/.oh-my-zsh"
plugins=(rails3 sublime gitflow gitfast bundler vi-mode)
source $ZSH/oh-my-zsh.sh

export PATH=/android-sdk/platform-tools:/android-sdk/tools:/opt/play-2.1.0:/usr/local/share/npm/bin:$PATH

export PATH=/android/sdk/platform-tools:/android/sdk/tools:$PATH
export PATH=/opt/phonegap-2.7.0/lib/android/bin:$PATH

# Alias

alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias psgrep="ps aux | egrep -v egrep | egrep"
alias lock="/System/Library/CoreServices/Menu\ Extras/user.menu/Contents/Resources/CGSession -suspend"
alias top="top -o rsize"
alias cleanup="sudo rm -rf /private/var/log/asl/*"
alias reload='source ~/.zshrc'
alias showme='qlmanage -p "$@" >& /dev/null'
alias gc='git commit -m "$@"'

# Config
cdpath=(. ~ ~/code ~/code/github)
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward