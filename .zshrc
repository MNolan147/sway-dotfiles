# If you come from bash you might have to change your $PATH.
export "PATH=/home/michael/Android/Sdk/cmdline-tools/latest/bin:/usr/local/android-studio/bin:/home/michael/.local/bin:$PATH"
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export ANDROID_SDK_ROOT="/home/michael/Android/Sdk"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set term colours
(/usr/bin/cat ~/.config/wpg/sequences &)
source ~/.cache/wal/colors-tty.sh

export TERM=xterm-256color

# qt5
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM=wayland

# Theme
ZSH_THEME="lambda"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7 

ENABLE_CORRECTION="true"

HIST_STAMPS="dd/mm/yyyy"

# Plugins
plugins=(git aliases common-aliases command-not-found ubuntu)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vi'
elif [ -f /bin/nvim ]; then
    export EDITOR='nvim'
else
    export EDITOR='vim'
fi

# Aliases
alias chp="echo -e 'connect B8:F1:2A:75:A1:65' | bluetoothctl"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias u='sudo apt update && sudo apt upgrade && sudo apt autoremove && notify-send "Update Complete!"'

if  [ -f /bin/batcat ]; then
    alias cat='batcat'
elif [ -f /bin/bat ]; then
    alias cat='bat'
else
    echo "bat not available, using cat"
fi

if [ -f /bin/nvim ]; then
    alias vim='nvim'
else
    echo "nvim not available, using vim"
fi

if [ -f /bin/nvim ]; then
    alias vim='nvim'
else
    echo "nvim not available, using vim"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -f /bin/exa ]; then    
    alias e="exa --icons"
else
    echo "exa not available using ls"
fi

if [ -f /usr/games/cbonsai ]; then
    alias cb="/home/michael/.local/bin/cbonsaiLooped.sh"
fi

alias ls="ls -Nh"
alias c="clear"
alias cc="cd ~ && clear"

