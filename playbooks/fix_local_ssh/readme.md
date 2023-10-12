## Fix local SSH

### Useful notes

1. Runbook should be executed with **super user** privileges

### Execution

#### From current md file

```shell
ansible-playbook -i ../../inventory/local_machine.ini --ask-become-pass ./fix_local_ssh.yaml --extra-vars "source=$(pwd)"
```

#### From the project root

```shell
ansible-playbook -i inventory/local_machine.ini --ask-become-pass playbooks/fix_local_ssh/fix_local_ssh.yaml --extra-vars "source=$(pwd)"
```

[Back to the main page](../../readme.md)
