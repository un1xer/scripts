CURLOC=$(pwd)
RSCRIPTS=$HOME/scripts
RDOCS=$HOME/docs

if [[ "$CURLOC" == "$RSCRIPTS" ]]
then
	echo '#############################'
	echo 'FIRST RUNNING PULL'
	git pull
	echo 'PULL DONE'
	echo '##############################'
	git remote set-url origin git@github.com:un1xer/scripts.git
	echo "RUNNING GIT FOR SCRIPTS REPO"
	git add *
	git commit -m "adding or updating a script"
	git push origin master

elif [[ "$CURLOC" == "$RDOCS" ]]
then
	git pull
	git remote set-url origin git@github.com:un1xer/docs.git
	echo "RUNNING GIT FOR DOCS REPO"
	git add *
	git commit -m "adding or updating a docs"
	git push origin master

else

	echo "NOT IN EITHER REPO. ENDING NOW"

fi
