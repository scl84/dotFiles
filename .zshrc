# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=25000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/sean/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# case-insensitive (all) completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# case-insensitive,partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

export EDITOR='nvim'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

#export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
#export LIBGL_ALWAYS_INDIRECT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /home/sean/.config/zsh/alias.zsh
source /home/sean/.config/zsh/env.zsh
source /home/sean/.config/zsh/funcs.zsh
source /home/sean/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/sean/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# eval "$(rbenv init -)"
eval "$(starship init zsh)"
