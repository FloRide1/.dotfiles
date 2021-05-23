# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


CURRENT_PATH=$(dirname $(realpath $0))

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

if [ -z "$(ls -A $ZSH/oh-my-zsh.sh)" ];
then
	rm -rf ${HOME}/.oh-my-zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


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
	export EDITOR='neovim'
fi

# Alias
alias ls='lsd'
alias tree='lsd --tree'
alias rm='rm -i'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off


neofetch
