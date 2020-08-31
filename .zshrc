
# Path to your oh-my-zsh installation.
export ZSH="/home/floride/.oh-my-zsh"

# Define Zsh theme 
ZSH_THEME="agnoster"

# Enable case sensitive correction 
CASE_SENSITIVE="true"

# Enable Correction 
ENABLE_CORRECTION="true"

# red dot -- Test --
 COMPLETION_WAITING_DOTS="true"

# Set Time Format 
HIST_STAMPS="yyyy-mm-dd"

# --- Plugins --- 
plugins=( git )

source $ZSH/oh-my-zsh.sh

# User configuration

# Set virutal environnement 
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Hide user@hostname on shell
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
   # prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
