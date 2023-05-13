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
alias paclist="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias zshrc="vim ~/.zshrc"
alias combine='pactl load-module module-combine-sink'
alias uncombine='pactl unload-module module-combine-sink'

# Syntax highlighting
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User bin
export PATH=~/bin:"$PATH"
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
#export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'
export ANDROID_SDK_ROOT='/opt/android-sdk'
export JAVA_HOME='/usr/lib/jvm/java-17-openjdk'
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/tools/
PATH=$ANDROID_HOME/emulator:$PATH
