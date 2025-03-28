article (){
	if [ ! -f ~/maths/$1.tex ]
	then
		cp ~/Templates/article.tex ~/maths/$1.tex
		sed -i "s/_TITLE_/${2}/" ~/maths/$1.tex
	else
		echo "File already exists... !"
	fi
}
