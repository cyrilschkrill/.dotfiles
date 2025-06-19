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

campdown (){
	cd Music
	/usr/bin/campdown $1
	cd ~
}

config (){
	if [ $1 = hyprland ]
	then
		vi ~/.config/hypr/hyprland.conf
	fi
}
