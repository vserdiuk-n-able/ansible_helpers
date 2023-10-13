#!/bin/zsh
#Location of the .zproflie should be changed for other users (in terms of user home)
ansible-playbook -i inventory/local_machine.ini playbooks/start_development/tokens_and_ide.yaml && . /Users/vadym.serdiuk/.zprofile
