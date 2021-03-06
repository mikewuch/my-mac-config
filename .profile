export CLICOLOR=1
export LSCOLORS=dxFxCxDxBxegedabagacad

export JAVA_HOME=/Library/Java/Home
export HISTCONTROL=ignoredups

# Added java env manager
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Swapping from PHP53 to PHP54
# export PATH="$(brew --prefix josegonzalez/php/php53)/bin:$PATH"
export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"

# Pipeless
export LESSOPEN='|/usr/local/bin/lesspipe.sh %s'
export LESS='-R'

# Server configuration
# export GRAILS_OPTS="-server -Xmx512M -XX:MaxPermSize=512m -Dfile.encoding=UTF-8"
# export REDISTOGO_URL=redis://mwu:686749979ff3d80018c958ef2204cdc8@herring.redistogo.com:9294/

# cd directories
alias cdtomcat="cd /Library/Tomcat/6.0.24"
alias cdprojects="cd /Users/mwu/Projects"
alias cdnfs="cd /Users/mwu/Projects/ea/p4/eax-p4a_1666/NeedForSpeed.com/kosmos/ml"
alias cdp4f="cd /Users/mwu/Projects/ea/git"
alias cdgrails="cd /Users/mwu/Projects/grails"
alias cdjava="cd /Users/mwu/Projects/java"
alias cdsf2="cd /Users/mwu/Projects/sf2"
alias cdrails="cd /Users/mwu/Projects/rails"
alias cdcg="cd /Users/mwu/Projects/caregaroo"
alias cdcgfb="cd /Users/mwu/Projects/caregaroo/cg_fbapp"
alias cdcgweb="cd /Users/mwu/Projects/caregaroo/cg2_app"
alias cdref="cd /Users/mwu/Projects/ref"
alias cdref="cd /Users/mwu/Projects/ref"

# grails commands
alias gmvn-clean-compile="mvn grails:exec -Dcommand=clean; mvn grails:exec -Dcommand=compile"
alias gra="grails run-app"

# shortcuts
alias szsh='source ~/.zshrc'
alias v="vim"
alias ll="ls -lh"
alias l="ls -lah"
alias c='clear'
alias vi='vim'
alias ls='ls -F'
alias h='history'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"

# Transmission CLI 
tsm-clearcompleted() {
        transmission-remote -l | grep 100% | grep Done | \
        awk '{print $1}' | xargs -n 1 -I % transmission-remote -t % -r ;}
tsm() { transmission-remote --list ;}
     # numbers of ip being blocked by the blocklist
     # credit: smw from irc #transmission
tsm-count() { echo "Blocklist rules:" $(curl -s --data \
     '{"method": "session-get"}' localhost:9091/transmission/rpc -H \
     "$(curl -s -D - localhost:9091/transmission/rpc | grep X-Transmission-Session-Id)" \
     | cut -d: -f 11 | cut -d, -f1) ;}
# demo video: http://www.youtube.com/watch?v=TyDX50_dC0M
tsm-blocklist() { $PATH_SCRIPTS/blocklist.sh ;}          # update blocklist
tsm-daemon() { transmission-daemon ;}
tsm-quit() { killall transmission-daemon ;}
tsm-altspeedenable() { transmission-remote --alt-speed ;}     # limit bandwidth
tsm-altspeeddisable() {     transmission-remote --no-alt-speed ;}     # dont limit bandwidth
tsm-add() { transmission-remote --add "$1" ;}
tsm-askmorepeers() { transmission-remote -t"$1" --reannounce ;}
tsm-pause() { transmission-remote -t"$1" --stop ;}          # <id> or all
tsm-start() { transmission-remote -t"$1" --start ;}          # <id> or all
tsm-purge() { transmission-remote -t"$1" --remove-and-delete ;} # delete data also
tsm-remove() { transmission-remote -t"$1" --remove ;}          # leaves data alone
tsm-info() { transmission-remote -t"$1" --info ;}
tsm-speed() { while true;do clear; transmission-remote -t"$1" -i | grep Speed;sleep 1;done ;}

# https://github.com/fagga/transmission-remote-cli
tsm-ncurse() { transmission-remote-cli ;}

parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}
 
export PS1='\u\[\e[1;37m\]@\[\e[1;32m\]\h\[\e[1;37m\]:\[\e[1;31m\]\W\[\e[1;33m\]$(parse_git_branch)\[\e[0;39m\] '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/mwu/.gvm/bin/gvm-init.sh" ]] && source "/Users/mwu/.gvm/bin/gvm-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "/Users/mwu/.jenv/bin/jenv-init.sh" ]] && source "/Users/mwu/.jenv/bin/jenv-init.sh" && source "/Users/mwu/.jenv/commands/completion.sh"
