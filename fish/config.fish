# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/stoeffel/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/stoeffel/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

alias fishy "source ~/.config/fish/config.fish"

alias ga "gg a"
alias gaa "git add ."
alias gac "git commit -a"
alias gd "git difftool"
alias gs "git status;gg s"
alias gp "git push"
alias gl "git pull --rebase"

# NPM
alias nr "npm run "
alias ni "npm install "
alias np "npm publish "
alias nt "npm test"
alias nu "npm update"
alias ns "npm run-script "

# Vim
alias vo "nvim -u NONE -N"
alias vi "nvim -u ~/.vimrc"
alias v "nvim -u ~/.vimrc"
alias v. "nvim -u ~/.vimrc ."
alias m "mvim -u ~/.vimrc"


