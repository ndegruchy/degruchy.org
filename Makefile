default:
	rsync -avh "." "nathan@degruchy.org:/var/www/degruchy.org/" --delete --filter="- .git" --filter="- Makefile" --filter="P assets/images/misc" --filter="- .gitignore" --filter="- README.md" --delete-excluded
