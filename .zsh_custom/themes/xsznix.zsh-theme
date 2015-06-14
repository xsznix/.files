if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="green"; fi

local return_code="%(?..%{$fg[red]%}%?%{$reset_color%})"

PROMPT='%n %{${fg_bold[$CARETCOLOR]}%}%3~%{$reset_color%} $(git_prompt_info)%{$fg[yellow]%}$(git_prompt_ahead)$(git_prompt_status)%{$reset_color%} '

RPS1="${return_code} %{$fg[cyan]%}%*%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_AHEAD="!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%"
ZSH_THEME_GIT_PROMPT_DELETED="-"
ZSH_THEME_GIT_PROMPT_RENAMED="^"
ZSH_THEME_GIT_PROMPT_UNMERGED="="
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
