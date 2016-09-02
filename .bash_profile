export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

alias gti='git'
alias gs='git status'
alias gl='git log'
alias gaa='git add -A'
alias ga='git add'
alias gcm='git commit -m'
alias gd='git diff'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gp='git pull'
alias gpod='git pull origin develop'
alias gph='git push'
alias gb='git branch'
alias gf='git fetch --all'
alias gc='git checkout'
alias gmd='git merge develop'

alias dt='cd ~/desktop'
alias dl='cd ~/Downloads'
alias be='bundle exec'
alias ber='bundle exec rake'
alias rm='rm -i'
alias hp="cd ~/desktop/homepage-jekyll"
alias chrome='open -a "Google Chrome"'
alias grl='grep -r -l'
alias g='grep -r'

alias o='atom .'

alias js='bundle exec jekyll serve'

alias docs="cd ~/desktop/documentation"
alias acad="cd ~/desktop/academy"
alias plat="cd ~/desktop/appboy-localdev/shared/platform"
alias db="cd ~/desktop/appboy-localdev/shared/platform/dashboard"
alias bp="vim ~/.bash_profile"
alias suc="cd ~/desktop/success"

export GREP_OPTIONS='--color=auto --exclude=*.log --exclude-dir=rcov'

export DOCKER=true
source ~/desktop/appboy-localdev/.profile

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
export PS1="\h \W\[\033[95m\]\$(parse_git_branch)\[\033[00m\] $ "


