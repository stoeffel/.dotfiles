# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# rupa's z-script
. ~/z/z.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node npm nyan bower gem gitfast last-working-dir vundle svn tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:bin:./node_modules/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/$USER/.gem/ruby/1.8/bin:/opt/nginx/sbin:/Users/$USER/3rd/adt-bundle-mac-x86_64-20130219/sdk/tools:/Users/$USER/3rd/adt-bundle-mac-x86_64-20130219/sdk/platform-tools:/Users/$USER/bin:/Users/$USER/.bash_it/plugins/available/todo
export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
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

# Compass
alias cc="compass compile"
alias cw="compass watch"

# Grunt
alias gr="grunt"

# Applications
alias c="open -a Google\ Chrome"
alias canary="open -a /Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --args --disable-web-security"
alias st="open -a SourceTree"

# List
alias l="ls -la"

# VID (very important directories)
alias d="cd ~/.dotfiles"
alias dv="cd ~/.dotfiles;vim;cd -;" # edit dotfiles, and go back were you came from
alias dl="d;git pull;"
alias s="cd ~/src"

SEN_VERSION=$(cd /Users/$USER/bin/Sencha/Cmd/;ls | egrep '^[0-9]+' | tail -n 1)
cd -
alias sencha="/Users/${USER}/bin/Sencha/Cmd/$SEN_VERSION/sencha";
alias sen="/Users/${USER}/bin/Sencha/Cmd/$SEN_VERSION/sencha";
alias senw="sen web start";
alias senb="sen app build native --clean";

# DEPRECATED
alias ll="echo use l"
alias gall="echo use ga"
alias gst="echo use gs"

# PHP SERVER
alias phpserver="php -S localhost:8000 -c ~/.dotfiles/php.ini"

# TMUX
alias ta="tmux -u -2 attach-session -t base"
alias tn="tmux -u -2 new-session -s base"
alias ts="tmux switch-client -t"

# FUNCTIONS
###########

rvim () { # connects to a remote server and opens vim
    if (( $# <= 1 ))
    then echo usage: rvim server folder;
        return 1
    fi
    mvim scp://root@$1/$2/
}

# ZSTYLES
#########

zstyle ':completion:*' special-dirs true

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source ~/.bin/tmuxinator.zsh
export LC_ALL=en_US.UTF-8
