# IAM module example

This Terraform code hasn't been tested against an AWS account yet and would need relative ARN's to be added where required.

Within the `env_vars` dir further environments could be added, and additional users can be added to the `ci-user` array.

To run the Terraform
```
terraform init -backend-config=backend_config/ci-test.tfvars
terraform plan -var-file=./env_vars/ci-test.tfvars
terraform apply -var-file=./env_vars/ci-test.tfvars
``` 

Ive formulated everything based on pre existing code standards and TF docs as per usual :) 
