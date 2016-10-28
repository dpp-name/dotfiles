# The following lines were added by compinstall
zstyle :compinstall filename '/home/dpp/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
HIST_EXPIRE_DUPS_FIRST=1
SAVEHIST=10000
setopt appendhistory
setopt hist_expire_dups_first
# End of lines configured by zsh-newuser-install
#PROMPT=$'%{\e[0;36m%}%n@%m %{\e[0m%}%t %{\e[0;35m%}%~%{\e[0m%}> '
#PROMPT=$'%n@%M %~> '
PROMPT=$'%(!.%{\e[1;31m%}%n@%M%{\e[0m%}.%n@%M) %~> '

#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh

setopt noclobber #prevent files from accidential overriting. use >| to overrite

source ~/.profile
source ~/.alias

#autoload -U up-line-or-beginning-search
#autoload -U down-line-or-beginning-search
#zle -N up-line-or-beginning-search
#zle -N down-line-or-beginning-search
#bindkey "^[[A" up-line-or-beginning-search # Up
#bindkey "^[[B" down-line-or-beginning-search # Down

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" history-beginning-search-backward
bindkey "\e[6~" history-beginning-search-forward
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
set completion-ignore-case On
