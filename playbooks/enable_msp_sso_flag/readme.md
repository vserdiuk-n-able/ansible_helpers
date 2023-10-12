## Enbale MSP SSO flag

### Switch MSP SSO feature flag

#### From current md file

```shell
ansible-playbook -i ../../inventory/remotes.ini ./enable_msp_sso_flag.yaml
```

#### From the project root

```shell
ansible-playbook -i inventory/remotes.ini playbooks/enable_msp_sso_flag/enable_msp_sso_flag.yaml
```

### Get invitation link

#### From current md file

```shell
ansible-playbook -i ../../inventory/remotes.ini ./get_invitation_link.yaml
```

#### From the project root

```shell
ansible-playbook -i ../../inventory/remotes.ini playbooks/enable_msp_sso_flag/get_invitation_link.yaml
```

[Back to the main page](../../readme.md)
