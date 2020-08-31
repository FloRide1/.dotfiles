# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH="/home/floride/.oh-my-zsh"

# Define Zsh theme 
ZSH_THEME="powerlevel10k/powerlevel10k"

# Enable case sensitive correction 
CASE_SENSITIVE="true"

# Enable Correction 
ENABLE_CORRECTION="true"

# red dot -- Test --
COMPLETION_WAITING_DOTS="true"

# Set Time Format 
HIST_STAMPS="yyyy-mm-dd"

# --- Plugins --- 
plugins=( 
		git
		zsh-syntax-highlighting
		vscode
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# Tmux : 256 colors 
export TERM=xterm-256color

# Set virutal environnement 
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Hide user@hostname on shell
#prompt_context() {
#	if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
# 		prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
# 	fi
#}

# Alias
alias ls='lsd'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
