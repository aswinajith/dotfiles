# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/aswin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# STARSHIP
eval "$(starship init zsh)"
