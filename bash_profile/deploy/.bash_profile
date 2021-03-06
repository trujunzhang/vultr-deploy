export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /home/deploy/.rvm/scripts/rvm

alias cbh='cat /home/deploy/.bash_profile'
alias ebh='emacs /home/deploy/.bash_profile'

alias sow='ls -la'

alias cdpub='cd /home/deploy/deploy_test/current/public'
alias cdconf='cd /home/deploy/deploy_test/shared/config'
alias cdshared='cd /home/deploy/deploy_test/shared'

alias cdtb='cd /home/deploy/deploy_test/current/public/tb'

alias tlogrs='tail /home/deploy/deploy_test/current/log/development.log'
alias tlogmg='tail /var/log/mongodb/mongod.log'

alias cpsecrets='cp /home/deploy/rwitunes/config/secrets.yml /home/deploy/deploy_test/shared/config/secrets.yml'
alias cpmongoid='cp /home/deploy/rwitunes/config/mongoid.yml /home/deploy/deploy_test/shared/config/mongoid.yml'