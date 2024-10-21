.PHONY: help
# Display all commands
help: # Show this help.
	@awk '/^#/{c=substr($$0,3);next}c&&/^[[:alpha:]][[:alnum:]_-]+:/{print substr($$1,1,index($$1,":")),c}1{c=0}' $(MAKEFILE_LIST) | column -s: -t

.PHONY: lint
# Lint all files with ansible-lint
lint:
	molecule lint


.PHONY: run-molecule
# Run molecule tests
run-molecule:
	MOLECULE_DISTRO=carlodepieri/docker-archlinux-ansible molecule test

.PHONY: install-deps
# Install galaxy dependencies
install-deps:
	ansible-galaxy install -r requirements.yml

.PHONY: run-playbook
# Run playbook for workstation
run-playbook:
	ansible-playbook setup.yml -i inventory.yml --ask-become-pass --limit "DojoDesktop"
