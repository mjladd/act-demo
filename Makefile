ACT := act --container-architecture linux/amd64
.DEFAULT_GOAL = help


#> ahelp: ACT help
ahelp:
	${ACT} -h
.PHONY: ahelp

#> dry: dry-run entire pipeline
dry:
	${ACT} -n
.PHONY: dry

#> graph: ACT draw workflows
graph:
	${ACT} -g
.PHONY: graph

#> install: install development prerequisites
install:
	brew bundle
	@sudo -k
	@echo 'Please enter your sudo password when prompted ...'
.PHONY: install

#> list: ACT list actions / jobs
list:
	${ACT} -l
.PHONY: list

#> pipeline: run entire pipeline
pipeline:
	${ACT}
.PHONY: pipeline

#> test: run the tests
test:
	${ACT} -j test
.PHONY: test

#> run: ACT run a specific action / job
run:
	@read -p "job? : " JOB \
	&& ${ACT} -j $${JOB}
.PHONY: run


help:
	@echo ""
	@echo "🤖 I can help!"
	@echo ""
	@sed -n 's/^#>/ /p' $(MAKEFILE_LIST)
.PHONY: help
