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
.PHONE: pipeline


help:
	@echo ""
	@echo "🤖 I can help!"
	@echo ""
	@sed -n 's/^#>/ /p' $(MAKEFILE_LIST)
.PHONY: help
