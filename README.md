# Terraform Practice and AWS S3 Project



## Overview

This repository contains my Terraform learning practicals and an AWS S3 project created during my fresher DevOps preparation.



## Tools Used

- Terraform

- AWS CLI

- AWS S3

- PowerShell

- Git and GitHub



## Local Terraform Practice

Topics practised:

- Terraform init, fmt, validate, plan, apply and destroy

- Resources and state management

- Variables and terraform.tfvars

- Outputs and modules

- count and for_each

- Resource dependencies using depends_on



The local exercises use terraform_data resources.



## AWS S3 Project

Project folder: aws-project/



Terraform created an S3 bucket with:

- Public access blocked

- AES256 server-side encryption

- Bucket versioning enabled

- Resource tags

- Outputs for bucket name and region



AWS Region: ap-southeast-2 (Sydney)



Bucket name: tf-practice-410567494405-adhir



## Useful Terraform Commands

Run commands from the relevant project folder.



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

```powershell

aws s3api get-public-access-block --bucket tf-practice-410567494405-adhir --region ap-southeast-2

aws s3api get-bucket-encryption --bucket tf-practice-410567494405-adhir --region ap-southeast-2

aws s3api get-bucket-versioning --bucket tf-practice-410567494405-adhir --region ap-southeast-2

```



## Security

- Public access blocking is enabled.

- AES256 encryption is enabled.

- Versioning is enabled.

- Never commit AWS credentials, secret keys or passwords.

- Do not commit Terraform state files or local provider directories.

- Check AWS costs and clean up resources after practice.



## Learning Goals

Practise Infrastructure as Code (IaC), Terraform workflows, state management, reusable modules and AWS S3 configuration.


