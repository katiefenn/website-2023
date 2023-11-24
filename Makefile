build: articles
	cp -r ./articles ./build
	find ./build -name "*.md" -type f -exec sh -c 'pandoc -i "$${0}" -o "$${0%.md}.html"' {} \;
	find ./build -name "*.md" -type f -exec sh -c 'rm "$${0}"' {} \;
