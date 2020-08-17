all:
	cat assets/css/normalize.min.css > assets/css/main.temp.css
	cat assets/css/main.css >> assets/css/main.temp.css
	sassc -t compressed assets/css/main.temp.css assets/css/main.min.css
	rsync -avz "." "nathan@degruchy.org:/var/www/degruchy.org/" --filter="P blog/" --filter=":- .gitignore" --filter="- Makefile" --filter="- .git" --delete 

