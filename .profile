export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=C

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    :
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
else
    :
fi

