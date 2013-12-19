#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors
#
alias ltr='ls -lhtr'
alias latr='ls -latrh'
alias pt='sudo puppet agent -t &'
alias pter='sudo puppet agent -t | grep err &'
alias pts='ps aux | grep puppet | grep -v grep'
alias pno='sudo puppet agent -t --noop &'
alias pte='echo "enabling puppet";sudo puppet agent --enable'
alias ptd='echo "disabling puppet";sudo puppet agent --disable'
alias ptvd='sudo puppet agent -vdt &'
alias sshdev='ssh devwebphp187'
alias ppwd='pwd -P'
alias catall='tail -n999 *'
alias hist='history -1000'
alias psg='ps aux | grep -v grep | grep '
alias ta=tmux attach-session
alias penv="cat /etc/puppet/puppet.conf | grep environment | awk '{print $3}'"
alias rdp="sudo xfreerdp -u administrator -d csnzoo bosys-wmgmt01"
alias rdpse='sudo xfreerdp -u administrator -d csnzoo seome01'
alias jconsole="jconsole &" #for monitoring java processes. Requires graphical interface.
alias srm='/csnzoo/jschneider/ShellScripts/srm.sh'
alias sup='cd /usr/local/www/data; svn update --accept theirs-full; cd -; cd /usr/local/www/resources; git checkout master; git pull; cd -;' #only works on devwebphp187
alias chrome='/opt/google/chrome/google-chrome %U'
alias diffys='diff -y --suppress-common-lines'
alias gdiff='git diff --full-index'
alias psg='ps aux | head -1; ps aux | grep'
alias gril='grep -ril'
alias stmux='echo "ssh-agent zsh;ssh-add;tmux;"'

#export PS1='[%D %*] %h %n@%m:%~%(?,%F{green} [:%)],%F{yellow} [%? %F{red}:(])%f%#'
export PS1='[%D %*] %h %? %n@%m: %d %# '
export EDITOR=vim
#export PATH=/wayfair/pkg/python2.7/latest/bin:$PATH
#settitle() { printf "\033k$(hostname)" | sed 's/.csnzoo.com//g'; }
#settitle
#ssh() { /usr/bin/ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "$*"; settitle; }
#export DISPLAY=:0

########Notes###############
########ssh-agent############
##on login, type the following##
#ssh-agent zsh
#ssh-add
#
#When connecting to new host, then type:
#ssh-copy-id -i [remote-host]
#
#every time AD password changes will have to generate new key?
###############
############git#########
#http://www.ndpsoftware.com/git-cheatsheet.html#loc=workspace;
######################
#HOST=`hostname | awk -F. {'print $1'}`
#if [[ -w ~/.zsh/history/ ]]; then
#    HISTFILE=~/.zsh/history/history_$HOST
#else
#    if [[ -w /tmp/$USERNAME ]]; then
#        mkdir /tmp/$USERNAME
#    fi
#    HISTFILE=/tmp/$USERNAME/history
#fi
#HISTSIZE=1000
#SAVEHIST=1000
#setopt hist_ignore_all_dups
#setopt hist_ignore_space

#SSHPID=`ps aux | grep "jschneider" | grep -c "[s]sh-agent"`
#if (( $SSHPID == 0 ))
#then
#  ssh-agent > ~/.ssh-env
#  source ~/.ssh-env
#  ssh-add
#else
#  source ~/.ssh-env
#fi
#
#watching network connections on openx
#watch -n 1 "netstat -ao|grep openx|awk '{print \$5}'|cut -d: -f1|sort|uniq -c"
