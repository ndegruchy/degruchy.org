all:
	cat assets/css/normalize.min.css > assets/css/main.temp.css
	cat assets/css/main.css >> assets/css/main.temp.css
	sassc -t compressed assets/css/main.temp.css assets/css/main.min.css
	aws s3 sync . s3://degruchy.org/ --include "*" --exclude ".git/*" --exclude ".gitignore" --exclude "*.txt" --exclude "*.md" --exclude "#*#" --exclude ".envrc" --exclude "*temp" --exclude "normalize*" --exclude "*.css" --include "*.min.css" --exclude "Makefile"
	aws cloudfront create-invalidation --distribution-id $(CLOUDFRONT_ID) --paths "/*"
