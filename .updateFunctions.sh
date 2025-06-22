update (){ 
	if [ $1 = "R packages" ]
	then
		Rscript -e "update.packages()"
	fi
	if [ $1 = "iphone" ]
	then
	       rsync -r --progress ~/mnt/iPhone/DuckDuckGo/Downloads/* ~/Downloads/DDGR
	fi
}
