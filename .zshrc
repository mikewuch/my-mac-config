# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git
brew
color-command
color-index
extract
gradle
grails
heroku
history
mvn
terminitor
urltools
vi-mode
)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Users/mwu/.rvm/gems/ruby-1.9.3-p194/bin:/Users/mwu/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/mwu/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/mwu/.rvm/bin:/usr/local/opt/php54/bin:/usr/local/heroku/bin:/Users/mwu/.jenv/shims:/Users/mwu/.jenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/mwu/.gvm/vertx/current/bin:/Users/mwu/.gvm/springboot/current/bin:/Users/mwu/.gvm/lazybones/current/bin:/Users/mwu/.gvm/groovyserv/current/bin:/Users/mwu/.gvm/groovy/current/bin:/Users/mwu/.gvm/griffon/current/bin:/Users/mwu/.gvm/grails/current/bin:/Users/mwu/.gvm/gradle/current/bin:/Users/mwu/.rvm/gems/ruby-1.9.3-p194/bin:/Users/mwu/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/mwu/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/mwu/.rvm/bin:/usr/local/opt/php54/bin:/usr/local/heroku/bin:/Users/mwu/.jenv/shims:/Users/mwu/.jenv/bin

# key bindings
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^R' history-incremental-search-backward

source ~/perl5/perlbrew/etc/bashrc

