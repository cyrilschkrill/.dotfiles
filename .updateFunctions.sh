update (){ 
	if [ $1 = "R packages" ]
	then
		Rscript -e "update.packages()"
	fi
}
