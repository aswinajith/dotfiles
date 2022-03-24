zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/aswin/.zshrc'

autoload -Uz compinit
compinit

# Starship
eval "$(starship init zsh)"

# Alias
alias ls='ls -Gh --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias py='python3'
alias paclist="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias zshrc="vim ~/.zshrc"
alias kernalupdate='env MAKEFLAGS=-j16 _microarchitecture=44 use_tracers=n use_numa=n yay --answerclean=a --answerdiff=n --sudoloop -S linux-xanmod-rog linux-xanmod-rog-headers;'
alias combine='pactl load-module module-combine-sink'

# Syntax highlighting
source /home/aswin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
