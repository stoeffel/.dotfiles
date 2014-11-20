# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="miloshadzic"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node npm bower gem gitfast vundle )


source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export ECLIPSE_HOME=/Applications/eclipse/
export PATH=$PATH:bin:./node_modules/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/home/$USER/.gem/ruby/1.8/bin:/opt/nginx/sbin:/home/$USER/bin/adt-bundle-linux-x86_64-20140702/sdk/tools:/home/$USER/bin/adt-bundle-linux-x86_64-20140702/sdk/platform-tools:/home/$USER/bin:/home/$USER/.bash_it/plugins/available/todo:~/bin/dart/dart-sdk/bin:~/.dotfiles/bin:/Applications/eclipse
export TERM='xterm-256color'

# EDITOR
########
export EDITOR='vim'

# ALIASES
#########

# Source files
alias soz="source ~/.zshrc"
alias sov="source ~/.vimrc"

# Git
alias ga="git add"
alias gaa="git add ."
alias gac="git commit -a"
alias gd="git difftool"
alias gs="git status"
alias gp="git push"
alias gl="git pull --rebase"
alias gerrit-hook="scp -p -P 29418 chermann@git.tocco.ch:hooks/commit-msg .git/hooks/"
function vn () {
    vim `git status | grep new | awk '{print $3}'`
}

function vm () {
    vim `git status | grep modified | awk '{print $2}'`
}

function vc () {
    vim `git unpushed | awk '{print $2}'`
}

function githubpr() {
    git fetch origin pull/$1/head:$2
    git checkout $2
}

# NPM
alias ni="npm install "
alias np="npm publish "
alias nt="npm test"
alias nu="npm update"
alias ns="npm run-script "

# Svn
alias ss="svn status"
alias sa="svn status | grep '?' | sed 's/^.* /svn add /' | zsh"
alias sc="svn commit"
alias sl="svn update"
alias scl="svn checkout"

#Mvn
alias mvn_install_customer_test="mvn -pl customer/test -am install -DskipTests -T2.0C"
function mvn_nice() {
  echo "...installing customer ${1}"
  mvn -pl customer/$1 -am install -DskipTests -T2.0C
}

#Nice
compctl -/ -W ~/src/nice2/ n2
function n2 () {
  cd ~/src/nice2/${1}
}

# Vim
alias mvim='open -a MacVim'
alias vo="vim -u NONE -N"
alias vi="vim"
alias v="vim"
alias v.="vim ."
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

function op() {
    chrome-cli open http://127.0.0.1/$1
}

# List
alias l="ls -a"

# VID (very important directories)
alias d="cd ~/.dotfiles"
alias dv="cd ~/.dotfiles;vim;cd -;" # edit dotfiles, and go back were you came from
alias dl="d;git pull;"
alias s="cd ~/src"

alias sencha="/home/${USER}/bin/Sencha/Cmd/5.0.0.160/sencha";
alias sen="/home/${USER}/bin/Sencha/Cmd/5.0.0.160/sencha";
alias senw="sen app watch";
alias senb="sen app build";

# DEPRECATED
alias ll="echo use l"
alias gall="echo use ga"
alias gst="echo use gs"

# PHP SERVER
alias phpserver="php -S localhost:8000 -c ~/.dotfiles/php.ini"

# TMUX
alias tmux="tmux -u"
alias ta="tmux -2 attach-session -t"
alias tn="tmux -2 new-session -s"
alias ts="tmux switch-client -t"
alias ms="mux start"

alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

alias fc='noglob fc'
alias find='noglob find'
alias ftp='noglob ftp'
alias history='noglob history'
alias locate='noglob locate'
alias rake='noglob rake'
alias rsync='noglob rsync'
alias scp='noglob scp'
alias sftp='noglob sftp'

#########

zstyle ':completion:*' special-dirs true

export LC_ALL=en_US.UTF-8

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=300m"
