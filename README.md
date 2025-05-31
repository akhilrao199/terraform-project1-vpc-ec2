Project Directory:
![image](https://github.com/user-attachments/assets/3e5911a0-3550-4a6f-9e20-9f078474eb6a)


Terraform init:
![image](https://github.com/user-attachments/assets/109501f7-60f3-4bc2-b0f0-e427a16e6523)

Terraform plan:

Creating a vpc with 2 private subnets:

![image](https://github.com/user-attachments/assets/4a9cb80e-c25c-45ea-887f-9b2c0fbe04ba)

Terraform apply:

![image](https://github.com/user-attachments/assets/34a520ef-f34c-4e70-9148-93f05fc73bb1)

AWS console after provision:
![image](https://github.com/user-attachments/assets/40648597-3baa-4f9d-a310-5eb62e90cb6b)
![image](https://github.com/user-attachments/assets/942b75cf-a574-4df8-a943-d0ab89e44e0e)

Create an EC2 vm and also modify the name of existing VPC:
![image](https://github.com/user-attachments/assets/0287c772-3b3b-4ecc-991f-7665ba580688)

![image](https://github.com/user-attachments/assets/f885ab4d-642b-4fea-8206-db23bf70e10f)

EC2 in modified VPC (for which the name has been modified)
![image](https://github.com/user-attachments/assets/fefa3f00-eca4-4b0f-a5fd-8920ea72ea86)

File contents:
Terraform/main.tf
![image](https://github.com/user-attachments/assets/77ee2cb2-6d37-4d0e-be07-eb13f7a5cc92)

terraform/terraform.tfvars and terraform/variables.tf
![image](https://github.com/user-attachments/assets/0ff6091d-6deb-4a17-9e25-d6951b5c9f16)

/terraform/modules/vpc
![image](https://github.com/user-attachments/assets/3c310342-d4fb-4413-9b2f-ea775f67531e)
![image](https://github.com/user-attachments/assets/814321f5-b339-48b4-91f6-60c51407085a)

/terraform/modules/ec2

![image](https://github.com/user-attachments/assets/736fa37f-ae48-4e88-abc6-f241be18ff90)
![image](https://github.com/user-attachments/assets/2f002468-545c-4c1c-83f3-2e0c3665642b)

Destroyed what I created, this can be done I two ways:
-- Commented out ec2 block in terraform/main.tf to delete provisioned EC2
--Ran the command to delete created vpc and subnets - deletion is module leve
- terraform destroy -target=module.vpc
After deleting the infrastructure:
![image](https://github.com/user-attachments/assets/154e7c82-eacb-4a67-81a6-bacdf8c12f65)
![image](https://github.com/user-attachments/assets/ad974000-80ec-4081-abb6-c3d5911f9149)
