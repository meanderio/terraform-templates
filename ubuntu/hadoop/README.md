# Hadoop Node Provision


### Project Structure

```bash
.
├── credentials.auto.tfvars.template
├── provider.tf
├── README.md
└── vm_qemu.tf
```

### Punch List

1. cp credentials.auto.tfvars.template to credentials.auto.tfvars file
2. update credentials.auto.tfvars with appropriate variable values
2. update vm_qemu.tf with image settings


### Plan and Provision VM

```bash
# check deploy and then apply
terraform plan
terraform apply -auto-approve
```
