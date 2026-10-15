# Terraform Practice and AWS S3 Project

## Overview
This repository contains my Terraform learning practicals and an AWS S3 project completed during my fresher DevOps preparation.

## Tools Used
- Terraform
- AWS CLI
- AWS S3
- PowerShell
- Git and GitHub

## Local Terraform Practice
Topics practised:
- Terraform initialization, formatting and validation
- Plan, apply and destroy
- Resources and state management
- Variables and terraform.tfvars
- Outputs and modules
- count and for_each
- Resource dependencies using depends_on

The local exercises use terraform_data resources.

## AWS S3 Project
Project folder: `aws-project/`

I used Terraform to create an S3 bucket with:
- Public access blocked
- AES256 server-side encryption
- Bucket versioning enabled
- Resource tags
- Outputs for bucket name and region

AWS Region: ap-southeast-2 (Sydney)

Bucket name: `tf-practice-410567494405-adhir`

The bucket settings were verified using AWS CLI. After testing, the bucket and its three associated configurations were destroyed using Terraform.

## Useful Terraform Commands
Run commands from the relevant project directory.

```powershell
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform state list
terraform show
terraform destroy
```

Always review the plan before applying or destroying resources.

## AWS Verification Commands
These commands were used to verify the bucket settings before cleanup. The bucket must exist for these commands to work.

```powershell
aws s3api get-public-access-block --bucket tf-practice-410567494405-adhir --region ap-southeast-2
aws s3api get-bucket-encryption --bucket tf-practice-410567494405-adhir --region ap-southeast-2
aws s3api get-bucket-versioning --bucket tf-practice-410567494405-adhir --region ap-southeast-2
```

## Security
- Public access blocking was enabled.
- AES256 encryption was enabled.
- Versioning was enabled.
- Never commit AWS credentials, secret keys or passwords.
- Do not commit Terraform state files or sensitive variable files.
- Review AWS costs and clean up practice resources after testing.

## Cleanup
After verifying the S3 bucket settings, I ran `terraform destroy`.
Terraform confirmed that four AWS resources were destroyed.
The Terraform configuration remains available to recreate the practice infrastructure.

## Learning Goals
  Practise Infrastructure as Code (IaC), Terraform workflows, state management, reusable modules and AWS S3 configuration.