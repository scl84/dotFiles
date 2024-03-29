#alias ls='ls --color=auto --group-directories-first'
#alias la='ls -lha --color=auto --group-directories-first'
#alias ll='ls -lh --color=auto --group-directories-first'
alias nv='nvim'
alias vi='nvim'
alias zrc='nvim ~/.zshrc'
alias nrc='nvim ~/.config/nvim/init.vim'
alias explore='explorer.exe .'
alias upug='sudo apt update && sudo apt upgrade'
alias fp='fzf --preview "bat --style=numbers --color=always {}"'
alias nfp='nvim $(fp)'
alias glog='git log | nvim -R -'
alias ls='exa --icons --group-directories-first'
alias ll='exa -l --git --icons --group-directories-first'
alias la='exa -l -a --git --icons --group-directories-first'
alias lt='exa -l -T --git --icons --group-directories-first'
