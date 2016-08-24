export TERM="xterm-256color"
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
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
alias gae="sudo nohup sh ~/Downloads/XX-Net-2.9.4/start.sh &"
alias wifi="sudo create_ap wlan0 eth0 lyx 12345678"
alias hust="sudo nohup sh  ~/Downloads/hustnet/rjsupplicant.sh &"
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


# Load the oh-my-zsh's library
source ~/.zplug/init.zsh

# Make sure you use double quotes
zplug "zsh-users/zsh-history-substring-search"

zplug  "zsh-users/zsh-completions"

zplug "zsh-users/zsh-syntax-highlighting", nice:10

# Can manage a plugin as a command
# And accept glob patterns (e.g., brace, wildcard, ...)
zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"

# Can manage everything e.g., other person's zshrc
zplug "tcnksm/docker-alias", use:zshrc

# Prohibit updates to a plugin by using the "frozen:" tag
zplug "k4rthik/git-cal", as:command, frozen:1

# Grab binaries from GitHub Releases
# and rename to use "file:" tag
zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

# Support oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh, nice:12, if:"which git"
# zplug "themes/robbyrussell", from:oh-my-zsh, nice:12

# Run a command after a plugin is installed/updated
zplug "tj/n", hook-build:"make install"

# Support checking out a specific branch/tag/commit of a plugin
zplug "b4b4r07/enhancd", at:v1
zplug "mollifier/anyframe", at:4c23cb60

# Install if "if:" tag returns true
zplug "hchbaw/opp.zsh", if:"(( ${ZSH_VERSION%%.*} < 5 ))"

# Can manage gist file just like other plugins
zplug "b4b4r07/79ee61f7c140c63d2786", \
    from:gist, \
    as:command, \
    use:get_last_pane_path.sh

# Support bitbucket
zplug "b4b4r07/hello_bitbucket", \
    from:bitbucket, \
    as:command, \
    hook-build:"chmod 755 *.sh", \
    use:"*.sh"

# Group dependencies, emoji-cli depends on jq in this example
# zplug "stedolan/jq", \
#     from:gh-r \
#     as:command, \
#     rename-to:jq
# zplug "b4b4r07/emoji-cli", \
#     on:"stedolan/jq"

# Set priority to load command like a nice command
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins

# Can manage local plugins
# zplug "~/.zsh", from:local
# A relative path is resolved with respect to the $ZPLUG_HOME
# zplug "repos/robbyrussell/oh-my-zsh/custom/plugins/my-plugin", from:local

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose


export PATH="$HOME/.rbenv/bin:$PATH"
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# eval "$(rbenv init -)"
