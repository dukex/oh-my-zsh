# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="duke"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/Users/evinicius/.bin:/Users/evinicius/.rvm/bin:/usr/local/Cellar/bin/:/usr/local/homebrew/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:~/.rbenv/shims

eval "$(rbenv init - zsh)"

# Alias

alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias psgrep="ps aux | egrep -v egrep | egrep"
alias showip="curl http://f.simplesideias.com.br/ip.php; echo; ifconfig | grep broadcast | sed 's/.*inet \(.*\) netmask.*/\1/'"
alias lock="/System/Library/CoreServices/Menu\ Extras/user.menu/Contents/Resources/CGSession -suspend"
alias top="top -o rsize"
alias make="make -j 2"
alias cleanup="sudo rm -rf /private/var/log/asl/*"
alias b="bundle exec"
alias reload='source ~/.zshrc'
alias showme='qlmanage -p "$@" >& /dev/null'
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
