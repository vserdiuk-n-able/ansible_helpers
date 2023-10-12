## Start local development

### Execution
#### From the current md file
```shell
ansible-playbook -i ../../inventory/local_machine.ini ./tokens_and_ide.yaml
```
#### From the project root
```shell
ansible-playbook -i inventory/local_machine.ini playbooks/start_development/tokens_and_ide.yaml
```

[Back to the main page](../../readme.md)
