## Motivation

Automate onboarded person and/or make your local build more durable.
After macOS installs new updates (don't know whether it's managed by N-able Security or IT or Apple) - some of my local
env parts are deleted or switched
to the defaults.

## Implementation and design

TBD

## Setup (macOS)

1. [Install pipx](https://pypa.github.io/pipx/installation/)
   ```shell
   brew install pipx
   pipx ensurepath
   brew update && brew upgrade pipx
   ```
2. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#selecting-an-ansible-package-and-version-to-install)
   ```shell
   pipx install --include-deps ansible
   # or minimal package
   # pipx install ansible-core
   pipx ensurepath
   # additional packages for ansible and PATH propagation
   pipx inject --include-apps ansible argcomplete	
   ```

## "How to?" example:

   ```shell
    # Open ansible folder
	cd ~/tmp/ansible
	# Execute command
	# --ask-become-pass can be replaced with -K
	ansible-playbook -i inventory/local_machine.ini --ask-become-pass playbooks/fix_local_ssh/fix_local_ssh.yaml --extra-vars "source=$(pwd)"
	ansible-playbook -i inventory/local_machine.ini playbooks/start_development/tokens_and_ide.yaml
   ```

## Runnable playbooks

1. [Change remote N-Central VRA logging level](playbooks/change_remote_logging_level/readme.md)
2. [Fix local SSH setup](playbooks/fix_local_ssh/readme.md)
3. [Start local development (codeartifact auth token and IDE)](playbooks/start_development/readme.md)
3. [Enable MSP SSO flag and check the invitation URL](playbooks/enable_msp_sso_flag/readme.md)

## Development plan

[Development plan reference](markdown/development_plan.md)

## Dependencies

- Zsh
- Brew
- Ansible (this)
- Anvil
- AWS CLI
- pipx
- argcomplete
- Intellij Idea (or flavour)
- Generated *.sh script for IDE startup (conventional)