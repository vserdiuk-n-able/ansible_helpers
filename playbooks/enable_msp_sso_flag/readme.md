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

### Switch Entra feature flag

#### From current md file

```shell
ansible-playbook -i ../../inventory/remotes.ini ./enable_entra_flag.yaml
```

#### From the project root

```shell
ansible-playbook -i ../../inventory/remotes.ini playbooks/enable_msp_sso_flag/enable_entra_flag.yaml
```

### Switch both (MSP SSO and Entra) flags

#### From current md file

```shell
ansible-playbook -i ../../inventory/remotes.ini ./enable_entra_and_sso_flags.yaml
```

#### From the project root

```shell
ansible-playbook -i ../../inventory/remotes.ini playbooks/enable_msp_sso_flag/enable_entra_and_sso_flags.yaml
```

### Fix N-Central VRA configuration related to the remote debug capabilities

#### From current md file

```shell
ansible-playbook -i ../../inventory/remotes.ini ./fix_vra_debug_config.yaml
```

#### From the project root

```shell
ansible-playbook -i ../../inventory/remotes.ini playbooks/enable_msp_sso_flag/fix_vra_debug_config.yaml
```

[Back to the main page](../../readme.md)
