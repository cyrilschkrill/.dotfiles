# schkrill's .zshrc

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default || tmux new-session -s default
fi


PS1="%n@%{$(tput setaf 33)%}%1d%{$(tput sgr0)%}$ "

export BROWSER="qutebrowser"

alias vi="vim"
dlmusic (){
	cd ~/Music/ && campdowm $1 && vlc $2
}
alias clock='peaclock'
alias ls="ls --color=tty"
alias ll="ls -1lG"
alias lx="ls -ld .?* "
alias lrs='systemctl --type=service --state=running' 
alias resource="source ~/.zshrc"
alias clr="clear"
alias !="exit"
alias shutdown='sudo shutdown -h now'
alias ddgr='ddgr -x -n 7'

alias R="R --quiet"

source ~/.functions.sh
source ~/.updateFunctions.sh
source ~/.backupFunctions.sh
source ~/.latexFunctions.sh

source ~/.config/zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/schkrill/.dart-cli-completion/zsh-config.zsh ]] && . /home/schkrill/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

alias zshrc='vi /home/schkrill/.zshrc'
alias gdm='sudo systemctl start gdm'
alias pcp='rsync -r --progress'
alias sysctl='sudo systemctl'
