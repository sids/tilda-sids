#### Life would be too boring without shortcuts. ####


#### General stuff ####
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


#### Application shortcuts ####
alias aq=aquamacs
alias mvi=mvim
alias ctags=`brew --prefix`/bin/ctags


#### git shortcuts ####
alias g=git
alias gb='git branch'
alias gco='git commit'
alias gch='git checkout'
alias gd='git diff'
alias gdt='git difftool'
alias gm='git merge'
alias gmt='git mergetool'
alias gs='git status'
alias gsh='git show'
alias gst='git stash'


#### Flipkart specific ####
alias fk-screen='stt fk-sreen; ssh siddhartha@w3.eng.flipkart.com -t screen -S nm -D -R'
alias fk-scratch-my='stt fk-scratch-my; ssh siddhartha@w3-indexer4.nm.flipkart.com -t screen -D -R'
alias fk-projects='cd $HOME/Flipkart/projects'
alias fk-tail-agent-log='stt fk-tail-agent-logs; tail -f /var/log/flipkart/w3/agent/agent.log'
