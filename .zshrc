if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export LANG=ja_JP.UTF-8
export EDITOR=emacs
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
setopt clobber
setopt nonomatch
setopt correct

autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt list_packed
setopt correct
zstyle ':completion:*' list-colors ''
setopt no_beep

# alias
alias ez='emacs ~/.zshrc'
alias soz='source ~/.zshrc'

# alias:mysql
alias mysql='mysql --auto-rehash'

# alias:git
alias gad='git add .'
alias gbr='git branch'
alias gck='git checkout'
alias gckb='git checkout -b'
alias gckm='git checkout master'
alias gpl='git pull'
alias gps='git push'
alias gcm='git commit'
alias gcma='git commit --amend'
alias gclean='git branch --merged | egrep -v "\*|master|production|staging" | xargs git branch -d'

# alias:docker
alias dc='docker'
alias dcc='docker-compose'

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# direnv
eval "$(direnv hook zsh)"

# pipenv
export PIPENV_VENV_IN_PROJECT=true
