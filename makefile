migrate:
	yarn run upgrade:dev
	- yarn run upgrade:core
	npx browserslist@latest --update-db
	yarn
	npx prettier -w .
	git add .
	git commit -m "migrate & reformat"
	git push