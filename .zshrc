echo "$(cat ~/.banner)" | lolcat
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
  # zsh-autocomplete
  fast-syntax-highlighting
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

alias clion="/opt/clion-2024.3.2/bin/clion"

alias l="colorls"
alias lc="colorls -a"
alias la="colorls -la"
alias ls="colorls -l"
alias tree="colorls --tree --report"
alias t="colorls --tree"
alias dc="docker compose"
alias lg="lazygit"
alias cat="batcat"

alias ganache="/home/piush/Apps/squashfs-root/Ganache --no-sandbox"

eval "$(/home/linuxbrew/.linuxbrew/bin/fzf --zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$(go env GOPATH)/bin"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export OPENAI_KEY=
export PATH=$PATH:/usr/local/bin:/opt/clion-2024.3.2/bin/clion
