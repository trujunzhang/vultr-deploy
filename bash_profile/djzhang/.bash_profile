export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /home/djzhang/.rvm/scripts/rvm

alias sbh='cat /home/djzhang/.bash_profile'
alias ebh='emacs /home/djzhang/.bash_profile'

alias sow='ls -la'

alias cdpub='cd /home/djzhang/deploy_test/current/public'
alias cdconf='cd /home/djzhang/deploy_test/shared/config'
alias cdshared='cd /home/djzhang/deploy_test/shared'

alias logrs='/home/djzhang/deploy_test/current/log/development.log'

alias cpsecrets='cp /home/djzhang/rwitunes/config/secrets.yml /home/djzhang/deploy_test/shared/config/secrets.yml'
alias cpmongoid='cp /home/djzhang/rwitunes/config/mongoid.yml /home/djzhang/deploy_test/shared/config/mongoid.yml'