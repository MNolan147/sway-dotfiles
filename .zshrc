# If you come from bash you might have to change your $PATH.
export "PATH=/home/michael/Android/Sdk/cmdline-tools/latest/bin:/usr/local/android-studio/bin:/home/michael/.local/bin:$PATH"
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export ANDROID_SDK_ROOT="/home/michael/Android/Sdk"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# z
. ~/programs/z/z.sh

# Set term colours
(/usr/bin/cat ~/.config/wpg/sequences &)
source ~/.cache/wal/colors-tty.sh

export TERM=xterm-256color

# qt5
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM=wayland

# Theme
ZSH_THEME="lambda"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7 

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aliases common-aliases command-not-found ubuntu)

source $ZSH/oh-my-zsh.sh

# User configuration

source ~/.config/zsh/bwcompletions.zsh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vi'
elif [ -f /bin/nvim ]; then
    export EDITOR='nvim'
else
    export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias chp="echo -e 'connect B8:F1:2A:75:A1:65' | bluetoothctl"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias u='sudo apt update && sudo apt upgrade && sudo apt autoremove'

if  [ -f /bin/batcat ]; then
    alias cat='batcat'
elif [ -f /bin/bat ]; then
    alias cat='bat'
else
    echo "bat not available, using cat"
fi

if [ -f /bin/fzf ]; then
    alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
else
    echo "fzf not available"
fi

if [ -f /bin/nvim ]; then
    alias vim='nvim'
else
    echo "nvim not available, using vim"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias e="exa"
alias ls="ls -Nh"
