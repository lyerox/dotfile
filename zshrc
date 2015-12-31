export TERM="xterm-256color"
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
source /usr/lib/z.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=zh_CN.UTF-8

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias vimprc="vim ~/.vimperatorrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls='clear'
alias ll='ls -la'
alias la='ls -a'
alias vim='nvim'
# alias vim-geeknote='vim -c Geeknote'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias gae="sudo ~/XX-Net/start.sh"
alias wifi="sudo create_ap wlan0 eth0 lyx 12345678"
alias hust="sudo sh  ~/Downloads/hustnet/rjsupplicant.sh"
#alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
#alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
#alias -s py=vim       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
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


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/home/lyx/.cargo/bin:$PATH"
alias netmusic="musicbox"
alias pacupg="sudo pacman -Syu"
alias pacre="sudo pacman -R"
alias pacrem="sudo pacman -Rns"
alias pacin="sudo pacman -S"
eval $(thefuck --alias)

alias systemctl="sudo systemctl"
source /usr/share/zsh/scripts/antigen/antigen.zsh


# Load the oh-my-zsh's library
antigen use oh-my-zsh
antigen bundle git
 # antigen bundle cd
antigen bundle sudo
antigen bundle pip
antigen bundle virtualenvwrapper
antigen bundle arialdomartini/oh-my-git
antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
# Syntax highlighting bundle
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle tarruda/zsh-autosuggestions
antigen apply
