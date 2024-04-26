# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/av/.local/share/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
#source $HOME/.local/share/fzf/shell/key-bindings.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh

export FZF_DEFAULT_COMMAND="fd --color=always --type file --follow --hidden --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--ansi"
