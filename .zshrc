# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kittitach/.oh-my-zsh"
export PATH=/opt/homebrew/bin:$PATH
export KITTY_CONFIG_DIRECTORY="/Users/{$USER}/.dotfiles/kitty"

##############################################################
# => ZSH Startup with Tmux
##############################################################
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux || tmux new
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"

ZSH_DISABLE_COMPFIX=true

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

plugins=(
  git
  bundler
  macos
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Alias
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias c="clear"
#alias tmux='tmux -2'

#Git alias
alias gco='git checkout'
alias gs='git status'
alias gac='git add . && git commit -am'
alias gp='git pull'
alias gl='git log'
alias gb='git branch | fzf | xargs git checkout'
alias gbd='git branch -d'
alias gsl='git shortlog -sn'
alias g3="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"


#cd alias
alias landing="cd secrets/bn/bn-sme-landing-ui"
alias landing-local='cd /Applications/MAMP/htdocs/botnoi/'
alias bn="cd secrets/bn/bn-sme-platform-ui-v2"
alias bnv="cd secrets/bn/bn-sme-platform-ui-v2 && v ."
alias psu="cd secrets/bn/psu-broadcast-platform"
alias ecom='cd secrets/bn/tpi/tpi-ecommerce'
alias tpi='cd secrets/bn/tpi/tpi-survey'
alias 2c2p='cd secrets/bn/tpi/tpi-2c2p-payment'
alias bigc='cd bigc-frontend'
alias bigc-cli='cd secrets/bn/bigc-cli/bigc-frontend'
alias mdcu='cd secrets/bn/mdcu/mdcu-liff'
alias resume='cd sai_resume/my_resume'
alias pretest='cd Desktop/pretest'
alias dbot='cd secrets/dbot'
alias rtv='cd secrets/dbot/lvt'
alias rtv-ui='cd secrets/dbot/lvt/lvt-ui'
alias ssh-sp="sudo ssh -F $HOME/.ssh/config -i $HOME/.ssh/id_rsa sprint"
alias ssh-dev="sudo ssh -F $HOME/.ssh/config -i $HOME/.ssh/id_rsa develop"
alias ssh-oci-sp="sudo ssh -F $HOME/.ssh/config -i $HOME/.ssh/id_rsa oci-sprint"
alias ssh-oci-qa="sudo ssh -F $HOME/.ssh/config -i $HOME/.ssh/id_rsa oci-qa"

# FZF config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,vendor}/*" 2> /dev/null'
export FZF_COMPLETION_TRIGGER='~~'
export FZF_COMPLETION_OPTS='+c -x'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
 
#source /home/kittitach/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Go config
export GOPATH=$HOME/Golang
export GOBIN=$HOME/Golang/bin
export GOCACHE=$HOME/.cache
export GO111MODULE=on
#export GOPRIVATE="gitlab.com/botnoi-sme,bitbucket.org/botnoi-sme,github.com/botnoi-sme"
export PATH=$PATH:$GOPATH/bin
