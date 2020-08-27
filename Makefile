default:
	rsync -avh "." "nathan@degruchy.org:/var/www/degruchy.org/" --delete --filter="- .git" --filter="- Makefile" --filter="P assets/images/misc" --filter="- assets/css/main.css" --filter="- .gitignore" --filter="- .idea" --filter="- README.md" --filter="- .task" --delete-excluded
