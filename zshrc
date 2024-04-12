# CodeWhisperer pre block. Keep at the top of this file.
if [[ $(uname) == "Darwin" ]]; then
  [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
fi

# For load profiling
[ -z "$ZPROF" ] || zmodload zsh/zprof

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#######################
# User configuration
#######################

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Load custom aliases
source ~/.aliases

export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/bin
export PROMPT=${PROMPT/\%c/\%~}
export WEZTERM_CONFIG_FILE=$HOME/.config/wezterm/wezterm.lua

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zoxide
eval "$(zoxide init zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

[ -z "$ZPROF" ] || zprof

# Check for updates on initial load...
source "$ZSH/tools/check_for_upgrade.sh"
alias bazel=$HOME/work/maglev/bazel
export KUBECONFIG=$HOME/.kube/maglev-stg0-sjc4.nonprod-nvkong.com
# export KUBECONFIG=$HOME/.kube/maglev-prd-sjc4.nonprod-nvkong.com

if [[ $(uname) == "Darwin" ]]; then
  # CodeWhisperer post block. Keep at the bottom of this file.
  [[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
  export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
  export GOPROXY=direct
  # Add brew binary to PATH
  export PATH=$PATH:/opt/homebrew/bin
  # pnpm
  export PNPM_HOME="/Users/akshayv/Library/pnpm"
fi

# pnpm start
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
