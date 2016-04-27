
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

alias gti='git'
alias gs='git status'
alias gl='git log'
alias ga='git add -A'
alias gcm='git commit -m'
alias gd='git diff'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gp='git pull'
alias gb='git branch'
alias gf='git fetch --all'
alias gc='git checkout'
alias gmd='git merge develop'

alias dt='cd ~/desktop'
alias be='bundle exec'
alias ber='bundle exec rake'
alias rm='rm -i'
alias hp="cd ~/desktop/homepage-jekyll"
alias chrome='open -a "Google Chrome"'
alias grl='grep -r -l'
alias g='grep -r'


alias js='bundle exec jekyll serve'

alias docs="cd ~/desktop/documentation"
alias acad="cd ~/desktop/academy"
alias plat="cd ~/desktop/appboy-localdev/shared/platform"
alias db="cd ~/desktop/appboy-localdev/shared/platform/dashboard"
alias bp="vim ~/.bash_profile"
alias suc="cd ~/desktop/success"

alias sweeney="ssh [redacted]"

export GREP_OPTIONS='--color=auto --exclude=*.log --exclude-dir=rcov'

export DOCKER=true
source ~/desktop/appboy-localdev/.profile
