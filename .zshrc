# fastfetch | lolcat
# print "\n"
echo "$(cat ~/.banner)" | lolcat

DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="false"

# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/piush/.zsh/completions:"* ]]; then export FPATH="/home/piush/.zsh/completions:$FPATH"; fi
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git 
  zsh-autosuggestions 
  # zsh-syntax-highlighting
  fast-syntax-highlighting
  # zsh-autocomplete
)

# source /home/piush/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $ZSH/oh-my-zsh.sh

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias n="nvim"
alias g="git"
alias c="clear"
alias ff="fastfetch | lolcat"
alias ss="cmatrix -b -s -C blue"
alias lol="lolcat"

alias clock="tty-clock -s -S -c -C 5 -x -b -t"
alias k="khal calendar"

alias clion="/opt/clion-2024.3.2/bin/clion"

alias l="eza --icons=always --color=always --grid"
alias lt="eza -@ --icons=always --color=always --git --git-repos --git-ignore --long --tree -o"
alias la="eza -@ --icons=always --color=always --git --git-repos --long -o --all --all"
alias ls="eza -@ --icons=always --color=always --git --git-repos --git-ignore --long -o"
alias t="eza --tree --icons=always --color=always --git --git-repos --git-ignore"
alias tree="t"
alias dc="docker compose"
alias lg="lazygit"
alias cat="batcat"

alias ganache="/home/piush/Apps/squashfs-root/Ganache --no-sandbox"

eval "$(/home/linuxbrew/.linuxbrew/bin/fzf --zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$(go env GOPATH)/bin"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$PATH:/usr/local/bin:/opt/clion-2024.3.2/bin/clion

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git --exclude node_modules"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git --exclude node_modules"
export FZF_CTRL_T_COMMAND="$FZF_CTRL_T_COMMAND"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

# fzf preview for tmux
export FZF_TMUX_OPTS=" -p90%,70% "

# pnpm
export PNPM_HOME="/home/piush/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
