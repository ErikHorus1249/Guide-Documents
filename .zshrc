# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/erik/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="spaceship"
ZSH_THEME="bullet-train"
#ZSH_THEME="robbyrussell"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(git extract)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# clear
alias cls='clear'

# gnome-tweaks
alias tweak='gnome-tweaks'

# docker
alias startD='echo 1429 | sudo -S systemctl start docker'
alias stopD='echo 1429 | sudo -S systemctl stop docker'


# Exit
alias e='exit'


#rise up vpn
alias vpn='riseup-vpn'


# disabe openVPN
#alias vpns='echo 1429 | sudo -S systemctl stop openvpn.service'

#Vhat launch
#alias vhat='java -jar /home/erik/Documents/Vhat_Application/Vhat.jar'

# dung lenh nano them co -l de hien thi so dong

# them repo
alias aptConfig='sudo nano /etc/apt/sources.list'

#launch bupsuite
alias burpsuite='/home/erik/Documents/Tools/BurpSuite/burp.sh'

#update
alias up='echo trinhchang -y | sudo -S  apt update && sudo apt upgrade -y' 

# minecratf
alias mine='java -jar $HOME/Documents/Tools/Minecraft/TLauncher-2.72.jar'

# git push
#alias push='git add . && git commit -m "up" && git push'
alias push='push.sh'

source $ZSH_CUSTOM/themes/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_THEME="bullet-train"

# icecat 
alias ice='(icecat &&) & exit'

# translate
alias trans='python3 $HOME/Documents/Python_scripts/translate/src/main.py'

# test ais
alias ais='python3 /home/erik/Documents/AIS/main.py'
alias AIS='python3  $HOME/Documents/AIS/execute.py'
# light theme
alias light='gsettings set  org.gnome.desktop.interface gtk-theme 'Qogir-win-light' && echo "light mode is enable"'
# dark theme
alias dark='gsettings set  org.gnome.desktop.interface gtk-theme 'Qogir-dark' && echo "dark mode is enable"' 

# Load pyenv automatically by adding
# the following to ~/.zshrc:

export PATH="/home/erik/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#export PATH="$HOME/Documents/scripts/git_script:$PATH"

# launch telegram
alias tele='nohup $HOME/Downloads/Telegram/Telegram'

# Download and Documents direcstory
alias doc="cd ~/Documents"
alias dow="cd ~/Downloads"
alias home="cd $HOME"

# googler
alias gg="googler -n 3"

#android studio
alias an="nohup /opt/android-studio/bin/studio.sh"

#ping google
alias pg='ping google.com'

#disable report
alias dr="sudo echo enabled=0 > /etc/default/apport"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/erik/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/erik/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/erik/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/erik/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
