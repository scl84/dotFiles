# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sean/.config/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/sean/.config/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/sean/.config/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/sean/.config/fzf/shell/key-bindings.zsh"
