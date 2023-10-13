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

#### Using the .sh script file

The main idea is to propagate environment variables and also to use settings.xml from ~/.m2 instead of from the project
itself

```shell
./local_dev.sh && . ~/.zprofile
```

[Back to the main page](../../readme.md)
