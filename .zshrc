# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_CUSTOM="$HOME/.zsh_custom"
ZSH_THEME="xsznix"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew common-aliases extract git grep lol ruby rvm sublime web-search z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:$HOME/bin/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ut="cd ~/Google\ Drive/UT\ Austin"
alias ut16s="cd ~/Google\ Drive/UT\ Austin/2016S"

export ANDROID_HOME=~/bin/adt-bundle-mac-x86_64/sdk
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$Home/Programming
source /usr/local/bin/virtualenvwrapper.sh

# ZSH HIGHLIGHTING

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=magenta
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=magenta
ZSH_HIGHLIGHT_STYLES[path]=fg=cyan
ZSH_HIGHLIGHT_STYLES[default]=fg=yellow

#ZSH_HIGHLIGHT_PATTERNS+=('sudo' 'fg=red,bold,underline')
#ZSH_HIGHLIGHT_PATTERNS+=('rm' 'fg=red,bold,underline')

# UNALIAS SOME STUFF THAT SHOULDN'T BE
unalias rm
unalias cp
unalias mv

alias rmi='rm -i'
alias cpi='cp -i'
alias mvi='mv -i'

# INIT STUFF

chpwd () {
	print -P "%{$fg[black]%}« $(pwd)%{$reset_color%}"
}

clear
print -P "%{$fg[black]%}« %n@%m :: $(pwd)%{$reset_color%}"

PERL_MB_OPT="--install_base \"/Users/xsznix/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/xsznix/perl5"; export PERL_MM_OPT;

#export PATH=/lusr/opt/pintos:/lusr/opt/bochs-2.2.6-pintos/bin:/lusr/opt/qemu-1.1.1:$PATH
export PATH=/usr/local/heroku/bin:$PATH
