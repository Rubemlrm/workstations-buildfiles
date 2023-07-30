.PHONY: help
# Display all commands
help: # Show this help.
	@awk '/^#/{c=substr($$0,3);next}c&&/^[[:alpha:]][[:alnum:]_-]+:/{print substr($$1,1,index($$1,":")),c}1{c=0}' $(MAKEFILE_LIST) | column -s: -t

.PHONY: lint
# Lint all files with ansible-lint
lint:
	molecule lint
