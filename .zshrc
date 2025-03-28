# Created by newuser for 5.9

PS1="%n@%{$(tput setaf 33)%}%1d%{$(tput sgr0)%}$ "

export BROWSER=qutebrowser

alias vi="vim"
alias ls="ls --color=tty"
alias ll="ls -1lG"
alias lx="ls -ld .?* "
alias resource="source ~/.zshrc"
alias clr="clear"
alias :!="exit"

alias R="R --quiet"

source ~/.functions.sh
source ~/.updateFunctions.sh
source ~/.backupFunctions.sh
source ~/.latexFunctions.sh

source ~/.config/zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
