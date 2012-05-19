
function git_prompt_info() {
   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
   echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}


PROMPT='%{$fg[white]%}in %{$fg[yellow]%}%c%{$reset_color%} '
RPROMPT=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%})%{$reset_color%}"
