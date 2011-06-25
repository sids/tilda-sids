#### History settings ####
# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)


#### Colorify; it's good for the eyes. ####
export CLICOLOR=true
export LSCOLORS='cxgxfxfxbxexexhbadbxbx'


#### Load aliases from ~/.bash_aliases ####
if [ -f "$HOME/.bash_aliases" ]; then
	. "$HOME/.bash_aliases"
fi


#### Enable programmable bash completion features; best cure for laziness. ####
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi


#### Command prompt ####
function ggbfp {
	## get git branch for prompt
	if [ "$HOME" != $(git rev-parse --show-toplevel) ]; then
		git branch --no-color 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git: \1)/'
	fi
}
export PS1='\n\[\033[1;30m\][$(date +%T)] \[\033[0;32m\]\h:\[\033[1;32m\]\w \[\033[0;36m\]$(ggbfp) \[\033[1;31m\]\n$ \[\033[0m\]'
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'


#### Set title of terminal to last command; for ssh command, set it to hostname ####
#trap 'printf "\033]0;  `history 1 |perl -p -e"s/^ssh //"  |cut -b8-`  \007"' DEBUG


#### Paths ####
export PATH=/usr/local/bin:$PATH:$HOME/bin:/usr/local/mysql/bin
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home


#### Options for other programs ####
export EDITOR=vim
export CATALINA_OPTS="-Dsolr.solr.home=/opt/solr -Xmx1024m"
