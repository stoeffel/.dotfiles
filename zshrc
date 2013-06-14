# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nanotech"


# rupa's z-script
. ~/z/z.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node npm nyan bower gem gitfast last-working-dir vi-mode vundle svn)

source $ZSH/oh-my-zsh.sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Customize to your needs...
export PATH=$PATH:bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/rbenv/plugins/ruby-build/bin:/opt/boxen/phpenv/shims:/opt/boxen/phpenv/bin:/opt/boxen/phpenv/plugins/php-build/bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:./node_modules/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/$USER/.gem/ruby/1.8/bin:/opt/nginx/sbin:/Users/$USER/3rd/adt-bundle-mac-x86_64-20130219/sdk/tools:/Users/$USER/3rd/adt-bundle-mac-x86_64-20130219/sdk/platform-tools:/Users/$USER/bin:/Users/$USER/.bash_it/plugins/available/todo

export TERM='xterm-256color'

# EDITOR
########
export EDITOR='vim'
export VMAIL_BROWSER='lynx'

# ALIASES
#########

# Source files
alias soz="source ~/.zshrc"
alias sov="source ~/.vimrc"

# Git
alias ga="git add --all ."
alias gd="git difftool"
alias gs="git status"
alias gp="git push"
alias gl="git pull"

# Svn
alias ss="svn status"
alias sa="svn status | grep '?' | sed 's/^.* /svn add /' | zsh"
alias sc="svn commit"
alias sl="svn update"
alias scl="svn checkout"

# Vim
alias vo="vim -u NONE -N"
alias v="vim"
alias m="mvim"

# Tmux
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"

# Compass
alias cc="compass compile"
alias cw="compass watch"

# Grunt
alias gr="grunt"

# Applications
alias c="open -a Google\ Chrome"
alias st="open -a SourceTree"

# List
alias l="ls -la"

# VID (very important directories)
alias b="cd /opt/boxen/repo"
alias bv="cd /opt/boxen/repo;vim;cd -;"
alias bx="boxen"
alias d="cd ~/.dotfiles"
alias dv="cd ~/.dotfiles;vim;cd -;" # edit dotfiles, and go back were you came from
alias dl="d;git pull;"
alias s="cd ~/src"

# DEPRECATED
alias ll="echo use l"
alias gall="echo use ga"
alias gst="echo use gs"

# FUNCTIONS
###########

rvim () { # connects to a remote server and opens vim
    if (( $# <= 1 ))
        then echo usage: rvim server folder;
        return 1
    fi
    mvim scp://root@$1/$2/
}

tm () { # start a new tmux session in a project under ~/src
    tmux new-session -s $1 -d
    cd ~/src/$1
    tmux split-window -v -p 20
    tmux split-window -h -p 30
    tmux -2 attach-session -d
}

# ZSTYLES
#########

zstyle ':completion:*' special-dirs true


# Tmuxinator
############
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
