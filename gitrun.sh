CURLOC=$(pwd)
RSCRIPTS=$HOME/scripts
RDOCS=$HOME/docs

if [[ "$CURLOC" == "$RSCRIPTS" ]]
then

	echo "RUNNING GIT FOR SCRIPTS REPO"
	git add *
	git commit -m "adding or updating a script"
	git push origin master

elif [[ "$CURLOC" == "$RDOCS" ]]
then

	echo "RUNNING GIT FOR DOCS REPO"
	git add *
	git commit -m "adding or updating a docs"
	git push origin master

else

	echo "NOT IN EITHER REPO. ENDING NOW"

fi
