default:
	rsync -avh "." "nathan@degruchy.org:/storage/www/degruchy.org/" --delete --filter="- .git" --filter="- Makefile" --filter="P assets/images/misc" --filter="- .gitignore" --filter="- README.md" --delete-excluded
