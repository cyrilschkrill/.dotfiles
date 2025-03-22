backup (){
# DOTFILES
	if [ $1 = dotfiles ]
	then
	    cp ~/.zshrc ~/.dotfiles/
	    cp ~/.vimrc ~/.dotfiles
	    cp ~/.functions.sh ~/.dotfiles
	    cp -r ~/.config/zsh/ ~/.dotfiles/.config
	    cp -r ~/.local/share/fonts ~/.dotfiles/.local/share/
	    cd ~/.dotfiles
	    git add . 
	    git commit -m "automated backup..."
	    git push github master
	    cd ~
	fi
# SCORES
	if [ $1 = scores ]
	then
		cd ~/Documents/MuseScore4/Scores/
		git add .
		git commit -m "Backup."
		git push github master
		cd ~
	fi
}
# AUR Arch Linux download & install.
aur (){
	cd ~/Downloads/pkgs/ 
	git clone https://aur.archlinux.org/$1.git
	cd $1
	makepkg -si
	cd ~
}

GIT_CONFIG (){
	if [ $1 = gmail ]
	then
		git config --local user.name "cyrilschkrill"
		git config --local user.email "cyrilschkril@gmail.com"
	fi
}
