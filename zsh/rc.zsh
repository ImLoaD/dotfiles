source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

source_if_exists $HOME/.env.sh
source_if_exists $DOTFILES/zsh/history.zsh
source_if_exists $DOTFILES/zsh/git.zsh
source_if_exists ~/.fzf.zsh
source_if_exists $DOTFILES/zsh/aliases.zsh
# source_if_exists $HOME/.asdf/asdf.sh
source_if_exists /usr/local/etc/profile.d/z.sh
source_if_exists /opt/homebrew/etc/profile.d/z.sh

if type "direnv" > /dev/null; then
    eval "$(direnv hook zsh)"
fi

autoload -U zmv
autoload -U promptinit && promptinit
autoload -U colors && colors
autoload -Uz compinit && compinit

if test -z ${ZSH_HIGHLIGHT_DIR+x}; then
else
    source $ZSH_HIGHLIGHT_DIR/zsh-syntax-highlighting.zsh
fi

precmd() {
    source $DOTFILES/zsh/aliases.zsh
}

export VISUAL=nvim
export EDITOR=nvim
export PATH="$PATH:/usr/local/sbin:$DOTFILES/bin:$HOME/.local/bin"

export PATH="$PATH:$HOME/Develope/flutter/bin"
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:/Users/imload/go/bin/
export PATH="$PATH":"$HOME/.pub-cache/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

# VIM MODE (http://dougblack.io/words/zsh-vi-mode.html) -----------------------
# bindkey -v
bindkey '^?' backward-delete-char


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-history-enquirer
  zsh-syntax-highlighting
  git
  brew
  # chucknorris
  zsh-autosuggestions
  extract
  history
  sudo
)

# function zle-line-init zle-keymap-select {
#     VIM_PROMPT="%{$fg[yellow]%}[% NORMAL]% %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
#     zle reset-prompt
# }

# zle -N zle-line-init
# zle -N zle-keymap-select
# export KEYTIMEOUT=1
# END VIM MODE ----------------------------------------------------------------

#eval "$(lua ~/bin/z.lua --init zsh)"
