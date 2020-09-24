default:
	rsync -avh "." "nathan@degruchy.org:/storage/www/degruchy.org/" --delete --filter="- .git" --filter="- Makefile" --filter="- .idea" --filter="P assets/images/misc" --filter="P notes/" --filter="- .gitignore" --filter="- README.*" --delete-excluded
