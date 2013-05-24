# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

zstyle ':completion:*' special-dirs true

# rupa's z-script
. ~/z/z.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node npm nyan bower gem gitfast last-working-dir)

source $ZSH/oh-my-zsh.sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Customize to your needs...
export PATH=$PATH:bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/rbenv/plugins/ruby-build/bin:/opt/boxen/phpenv/shims:/opt/boxen/phpenv/bin:/opt/boxen/phpenv/plugins/php-build/bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:./node_modules/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/$USER/.gem/ruby/1.8/bin:/opt/nginx/sbin:/Users/$USER/3rd/adt-bundle-mac-x86_64-20130219/sdk/tools:/Users/$USER/3rd/adt-bundle-mac-x86_64-20130219/sdk/platform-tools:/Users/$USER/bin:/Users/$USER/.bash_it/plugins/available/todo
