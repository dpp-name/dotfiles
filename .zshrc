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
PROMPT=$'%n@%m %~> '

#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh

setopt noclobber #prevent files from accidential overriting. use >| to overrite

source .profile
source .alias
source .inputrc
