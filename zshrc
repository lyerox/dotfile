# Path to your oh-my-zsh installation.
export ZSH=/home/lyx/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby sudo hacker-quotes history fasd)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/lyx/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



export TERM="xterm-256color"
export WORKON_HOME=$HOME/.virtualenvs
export JAVA_HOME='/usr/lib/jvm/java-8-jdk/'
source /usr/bin/virtualenvwrapper.sh
# source /usr/lib/z.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH
# # export MANPATH="/usr/local/man:$MANPATH"
#
# # You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=zh_CN.UTF-8
#
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias vimprc="vim ~/.vimperatorrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls='clear'
alias ll='ls -la'
alias la='ls -a'
# alias vim="nyaovim"
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias gae="sudo nohup sh ~/XX-Net/start&"
alias wifi="sudo create_ap wlan0 eth0 lyx 12345678"
alias hust="sudo nohup sh  ~/Downloads/hustnet/rjsupplicant.sh &"
# #alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
# #alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
# #alias -s py=vim       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vim
alias -s c=vim
alias -s wiki=vim
alias -s java=vim
alias -s txt=gedit
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s pdf='zathura'
alias -s gif='mcomix'
alias -s png='feh'
alias -s jpg='feh'
alias -s epub='E-book viewer'
#
# ### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:/home/lyx/.cargo/bin:$PATH"
alias netmusic="musicbox"
alias pacupg="sudo pacman -Syu"
alias pacre="sudo pacman -R"
alias pacrem="sudo pacman -Rns"
alias pacin="sudo pacman -S"
eval $(thefuck --alias)
#
alias systemctl="sudo systemctl"
#
#
# # Then, source plugins and add commands to $PATH
# # Syntax highlighting bundle
# # antigen bundle tarruda/zsh-autosuggestions
source ~/.rvm/scripts/rvm
# eval "$(rbenv init -)"
#must to be at the end of zshrc
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias a='fasd -a'
alias s='fasd -si'
alias d='fasd -d'
alias f='fasd -f'
alias sd='fasd -sid'
alias sf='fasd -sif'
alias z='fasd_cd -d'
alias zz='fasd_cd -d -i'
