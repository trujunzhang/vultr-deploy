export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /home/deploy/.rvm/scripts/rvm

alias cbh='cat $HOME/.bash_profile'
alias ebh='emacs $HOME/.bash_profile'

alias sow='ls -la'

alias cdpub='cd /home/deploy/deploy_test/current/public'
alias cdconf='cd /home/deploy/deploy_test/shared/config'
alias cdshared='cd /home/deploy/deploy_test/shared'

alias logrs='/home/deploy/deploy_test/current/log/development.log'

alias cpsecrets='cp /home/deploy/rwitunes/config/secrets.yml /home/deploy/deploy_test/shared/config/secrets.yml'
alias cpmongoid='cp /home/deploy/rwitunes/config/mongoid.yml /home/deploy/deploy_test/shared/config/mongoid.yml'

alias tcronlog='tail /home/deploy/deploy_test/current/log/cron_log.log'

alias upwhen='whenever --update-crontab'
alias lswhen='crontab -l'


# Cron
alias lscron='ls /var/spool/cron/'
alias pscron='ps -aux | grep cron'
alias dpecron='crontab -u deploy -e'
alias dplcron='crontab -u deploy -l'


# echo $TARGETS_HOME
export TARGETS_HOME=/home/deploy/djzhang-targets


# 45 21 * * * export DISPLAY=:0 && terminal -e 'cd /home/deploy/djzhang-targets/cwgithub && scrapy crawl github'
# 53 21 * * * export DISPLAY=:0 && xfce4-terminal -e /home/deploy/djzhang-targets/cwgithub/crawling

* * * * * DISPLAY=:0.0 /usr/bin/xfce4-terminal -x 'scrapy crawl github' --working-directory=/home/deploy/djzhang-targets/cwgithub -T 'github'

* * * * * DISPLAY=:0.0 /usr/bin/xfce4-terminal -e "bash -c '/home/deploy/.pyenv/shims/scrapy crawl github;bash'" --working-directory=/home/deploy/djzhang-targets/cwgithub -T 'github'
