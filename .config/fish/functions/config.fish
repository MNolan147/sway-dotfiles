# Remove default greeting
set --erase fish_greeting

# Defined in - @ line 1
function config --wraps='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' --description 'alias config=/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv;
end

# Make the blue color for directories more readable
set -x LSCOLORS Exfxcxdxbxegedabagacad

# Bindings 
bind \e\t forward-word
