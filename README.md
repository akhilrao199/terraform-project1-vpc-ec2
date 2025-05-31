Project Directory:![image](https://github.com/user-attachments/assets/3e5911a0-3550-4a6f-9e20-9f078474eb6a)

Terraform init:![image](https://github.com/user-attachments/assets/109501f7-60f3-4bc2-b0f0-e427a16e6523)

Terraform plan:
Creating a vpc with 2 private subnets:
Terraform apply:
AWS console after provision:
Create an EC2 vm and also modify the name of existing VPC:
EC2 in modified VPC (for which the name has been modified)
File contents:
Terraform/main.tf
terraform/terraform.tfvars and terraform/variables.tf
/terraform/modules/vpc
/terraform/modules/ec2
Destroyed what I created, this can be done I two ways:
1. 2. Commented out ec2 block in terraform/main.tf to delete provisioned EC2
Ran the command to delete created vpc and subnets - deletion is module leve
1. terraform destroy -target=module.vpc
After deleting the infrastructure:
