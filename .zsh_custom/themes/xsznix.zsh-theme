if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg_bold[red]%}« %?%{$reset_color%}
)"

local git='$(git_prompt_info)$(git_prompt_ahead)'

PROMPT='${return_code}%{${fg_bold[$CARETCOLOR]}%}»%{$reset_color%} '

RPROMPT="%{$fg[yellow]%}$git%{$reset_color%} %{${fg[green]}%}%1~%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_AHEAD="!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}a%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[cyan]%}m%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}d%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}r%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%}=%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}?%{$reset_color%}"
