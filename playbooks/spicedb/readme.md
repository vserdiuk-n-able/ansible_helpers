## Validate SpiceDB schema file

### Useful notes

### Execution

### Steps: full cycle (fetching from repo, repo URL is not parametrized) and validation of the file
#### From current md file
Positive case:
```shell
ansible-playbook -i ../../inventory/local_machine.ini ./fetch_and_validate_spicedb_schema.yaml --extra-vars "source=$(pwd) schema_file_name=$(pwd)/resources/schema-and-data-positive.yaml remove_schema=true"
```
Negative case (should fail):
```shell
ansible-playbook -i ../../inventory/local_machine.ini ./fetch_and_validate_spicedb_schema.yaml --extra-vars "source=$(pwd) schema_file_name=$(pwd)/resources/schema-and-data-negative.yaml remove_schema=true"
```
#### From the project root
Positive case:
```shell
ansible-playbook -i inventory/local_machine.ini playbooks/spicedb/fetch_and_validate_spicedb_schema.yaml --extra-vars "source=$(pwd) schema_file_name=$(pwd)/playbooks/spicedb/resources/schema-and-data-positive.yaml remove_schema=true"
```
Negative case:
```shell
ansible-playbook -i inventory/local_machine.ini playbooks/spicedb/fetch_and_validate_spicedb_schema.yaml --extra-vars "source=$(pwd) schema_file_name=$(pwd)/playbooks/spicedb/resources/schema-and-data-negative.yaml remove_schema=true"
```
### Steps: Validation only (resources copied from the resources folder)
#### From current md file
Positive case:
```shell
ansible-playbook -i ../../inventory/local_machine.ini ./plays/validate_schema_file.yaml --extra-vars "source=$(pwd) schema_file_name=$(pwd)/resources/schema-and-data-positive.yaml remove_schema=true"
```
Negative case (should fail):
```shell
ansible-playbook -i ../../inventory/local_machine.ini ./plays/validate_schema_file.yaml --extra-vars "source=$(pwd) schema_file_name=$(pwd)/resources/schema-and-data-negative.yaml remove_schema=true"
```
#### From the project root
Positive case:
```shell
ansible-playbook -i inventory/local_machine.ini playbooks/spicedb/validate_schema_file.yaml --extra-vars "source=$(pwd) schema_file_name=$(pwd)/playbooks/spicedb/resources/schema-and-data-positive.yaml remove_schema=true"
```
Negative case:
```shell
ansible-playbook -i inventory/local_machine.ini playbooks/spicedb/validate_schema_file.yaml --extra-vars "source=$(pwd) schema_file_name=$(pwd)/playbooks/spicedb/resources/schema-and-data-negative.yaml remove_schema=true"
```

[Back to the main page](../../readme.md)