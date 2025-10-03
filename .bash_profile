# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


export GCM_KEY=REDACTED
export GITHUB_SECRET_KEY=REDACTED
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# stuff for my PAC class
alias pac='cd /Users/liann/Dropbox/pac1'
# Compile and run in one step
j() {
     javac $1
     java ${1%.java}
     rm ${1%.java}.class
}

alias branch='!git rev-parse --abbrev-ref HEAD'
alias push='git push -u origin $(branch)'
alias gti='git'
alias gs='git status'
alias gl='git log'
alias gaa='git add -A'
# Git add empty files but not commit changes (for git diff)
alias gaf='git add -N .'
alias ga='git add'
alias gcm='git commit -m'
alias gd='git diff'
# Git diff that ignores whitespace
alias gdw='git diff -b'
alias gcb='git checkout -b'
alias gcl='git checkout -'
alias gcd='git checkout develop'
alias gpod='git pull origin develop'
alias gph='git push origin HEAD'
# This arranges branches by commit date
alias gb='git branch --sort=committerdate'
alias gfa='git fetch --all'
alias gc='git checkout'
alias gmd='git merge develop'

# push the current branch up to origin
gp() {
    git push origin $(git rev-parse --symbolic-full-name --abbrev-ref HEAD)
}

alias dt='cd ~/desktop'
alias dl='cd ~/Downloads'
alias qu='cd ~/desktop/queries'
alias ws='cd ~/workspace'

alias be='bundle exec'
alias ber='bundle exec rake'
alias rs='bundle exec rails s'
# alias rm='rm -i'
alias hp="cd ~/desktop/homepage-jekyll"
alias chrome='open -a "Google Chrome"'
alias grl='grep -r -l'
alias g='grep -r'

alias o='atom .'
alias c='clear'

# easiest server ever on 8000
alias serve='python -m SimpleHTTPServer'

# front-end testing
alias konacha="bundle exec rake konacha:serve"

alias js='bundle exec jekyll serve'

alias docs="cd ~/desktop/documentation"
alias acad="cd ~/desktop/academy"
alias plat="cd ~/desktop/appboy-localdev/shared/platform"
alias db="cd ~/desktop/appboy-localdev/shared/platform/dashboard"
alias bp="vim ~/.bash_profile"
alias suc="cd ~/desktop/success"
alias rmtmp="rm -rf ~/desktop/appboy-localdev/shared/platform/dashboard/tmp"
# Bc i can't spell
alias platform-dashboard-conosle="platform-dashboard-console"
alias redacted="ssh -t redacted \"/bin/bash --login -c 'sudo -iH -u platform redacted'\""
alias prod="ssh -t redacted \"/bin/bash --login -c 'sudo -iH -u platform redacted'\""
alias cenv="ssh -t redacted"

export GREP_OPTIONS='--color=auto --exclude=*.log --exclude-dir=rcov'

export DOCKER=true
source ~/desktop/appboy-localdev/.profile

alias pw="platform-wakeup"
alias pd="platform-dashboard"
alias r="ragnarok"

# Something sal said i needed for local ruby
export RBENV_VERSION=${PLATFORM_RUBY_VERSION}; export DOCKER=true; eval "$(rbenv init -)"

alias salmagic="vBoxManage controlvm ${RAGNAROK_VM} acpipowerbutton"

alias pls="platform-shell"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# Git branch in prompt.

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


# emoji thing
random_emoji() {
  # TODO figure out how to get support for multi-byte UTF characters
  emoji="😁😂😃😄😉😋😜😱🙀🙅🙋🙌🙏🚀🚨⛄⭐🌈🌱🍆🍕🍑🍟🎉🐙🐑🐯👀💁💅💖💩💸💾🔮💭😎😇🌳🍋💥"

  size=${#emoji}
  rng=$(($RANDOM % $size))

  echo ${emoji:$rng:1}
}

export PS1="\$(random_emoji) \W\[\033[95m\]\[\033[00m\] $ "
