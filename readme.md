Motivation:
Automate onboraded person and/or make your local build more durable.
After MacOS installs new updates (don't know whether it's managed by N-able Security or IT or Apple) - some of my local env parts are deleted or switched
to the defaults.
Step-by-step guide of what I'm doing:
1. Install pipx - https://pypa.github.io/pipx/installation/
	$ brew install pipx
	$ pipx ensurepath
	$ brew update && brew upgrade pipx
2. Install Ansible - https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#selecting-an-ansible-package-and-version-to-install
	$ pipx install --include-deps ansible
	# or minimal package
	$ pipx install ansible-core
	$ pipx ensurepath
	# additional packages for ansible and PATH propagation
	$ pipx inject --include-apps ansible argcomplete
How to:
1. Open ansible folder
	$ cd ~/tmp/ansible
2. Execute command:
	# --ask-become-pass can be replaced with -K
	$ ansible-playbook -i inventory/local_machine.ini --ask-become-pass playbooks/local_ssh/local_ssh.yaml --extra-vars "source=$(pwd)"
	$ ansible-playbook -i inventory/local_machine.ini playbooks/start_development/tokens_and_ide.yaml
