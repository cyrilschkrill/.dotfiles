backup (){
	if [ $1 = "dotfiles" ]
	then
		cp ~/.zshrc ~/.dotfiles
		cp ~/.vimrc ~/.dotfiles
		cp ~/.functions.sh ~/.dotfiles
		cp ~/.updateFunctions.sh ~/.dotfiles
		cp ~/.backupFunctions.sh ~/.dotfiles
	       	cp -r ~/.config/zsh ~/.dotfiles/.config/
		cp -r ~/.local/share/fonts ~/.dotfiles/.local/share/fonts
		cd ~/.dotfiles
		git add .
		git commit -m "### AUTOMATED BACKUP !!"
		git push github master
		cd ~
	fi
	if [ $1 = "scores" ]
	then
		cd ~/Documents/MuseScore4
		git add .
		git commit -m "### AUTOMATED BACKUP !!"
		git push github master
		cd ~
	fi
}
