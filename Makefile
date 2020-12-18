default:
	aws s3 sync . s3://degruchy.org/ --exclude="README*" --exclude=".git*" --exclude="Makefile"
