#### Life would be too boring without shortcuts. ####


#### General stuff ####
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


#### Application shortcuts ####
alias hussh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
alias aq='open -a Aquamacs\ Emacs'
alias mvi=mvim
alias ctags=`brew --prefix`/bin/ctags

## Emacs
alias ect='emacsclient -t'
alias ecc='emacsclient -c'
alias poe='open peepopen://$(pwd)?editor=Emacs'


#### git shortcuts ####
alias g=git
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gl='git log1'
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
source $HOME/.bash_aliases_fk
