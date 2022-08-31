ACT=act --container-architecture linux/amd64
.DEFAULT_GOAL = help


#> install: install development prerequisites
#
install:
	brew bundle
	@sudo -k
	@echo 'Please enter your sudo password when prompted ...'
.PHONY: install

#> pipeline: run entire pipeline
pipeline:
	ACT 
.PHONY: pipeline

#> dry: dry-run entire pipeline
dry:
	ACT -n
.PHONY: dry

#> test: run the tests
test:
	ACT -j test
.PHONY: test


help:
	@echo ""
	@echo "🤖 I can help!"
	@echo ""
	@sed -n 's/^#>/ /p' $(MAKEFILE_LIST)
.PHONY: help
