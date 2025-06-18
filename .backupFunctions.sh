backup (){
	if [ $1 = "dotfiles" ]
	then
		cp ~/.zshrc ~/.dotfiles
		cp ~/.vimrc ~/.dotfiles
		cp ~/.functions.sh ~/.dotfiles
		cp ~/.updateFunctions.sh ~/.dotfiles
		cp ~/.backupFunctions.sh ~/.dotfiles
		cp ~/.latexFunctions.sh ~/.dotfiles
	       	cp -r ~/.config/zsh ~/.dotfiles/.config/
		cp -r ~/.local/share/fonts ~/.dotfiles/.local/share/fonts
		cp ~/.iSync.sh ~/.dotfiles/iSync.sh
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

	if [ $1 = "iPhone" ]
	then
		idevicepair pair
		idevicepair validate
		ifuse --documents "com.duckduckgo.mobile.ios" /home/schkrill/mnt/iPhone/DuckDuckGo
		# on attend la suite...
}

