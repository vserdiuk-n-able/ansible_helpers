## Command to execute

### From the current md file

```shell
ansible-playbook -i ../../inventory/remotes.ini ./change_logging_level.yaml --extra-vars "package_to_replace=log4j.logger.com.nable.dms.core debug_level=WARN"
```

```shell
ansible-playbook -i ../../inventory/remotes.ini ./change_logging_level.yaml --extra-vars "package_to_replace=log4j.logger.com.nable.server.mms debug_level=INFO"
```

### From the ansible_helpers root folder

```shell
ansible-playbook -i inventory/remotes.ini playbooks/change_remote_logging_level/change_logging_level.yaml --extra-vars "package_to_replace=log4j.logger.com.nable.dms.core debug_level=WARN"
```

## Info

- [Log4j logging levels](https://www.digitalocean.com/community/tutorials/log4j-levels-example-order-priority-custom-filters)

[Back to the main page](../../readme.md)
