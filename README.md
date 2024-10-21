# BuildFiles

## Build status

[![linting](https://github.com/Rubemlrm/workstations-buildfiles/actions/workflows/lint.yml/badge.svg)](https://github.com/Rubemlrm/workstations-buildfiles/actions/workflows/lint.yml)
[![molecule testing](https://github.com/Rubemlrm/workstations-buildfiles/actions/workflows/molecule.yml/badge.svg)](https://github.com/Rubemlrm/workstations-buildfiles/actions/workflows/molecule.yml)

## Powered by:

![](https://img.shields.io/badge/Ansible-gray?color=grey&logo=ansible&style=for-the-badge)
![](https://img.shields.io/badge/GithubActions-gray?color=grey&logo=github-actions&style=for-the-badge)
![](https://img.shields.io/badge/Git-gray?color=grey&logo=Git&style=for-the-badge)

## Works on

![](https://img.shields.io/badge/Archlinux-gray?color=blue&logo=Archlinux&style=for-the-badge)

## Instructions

`pip3 install ansible`

### Before Run the setup

`ansible-galaxy collection install -r requirements.yml `

### Run the Playbook

`ansible-playbook setup.yml -i inventory.yml --limit "host" --ask-become-pass`
