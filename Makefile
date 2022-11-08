fmt:
	yarn run prettier-write

fmt-check:
	yarn run prettier-check

setup-git-hooks:
	git config --local core.hooksPath .git-hooks
