terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

variable "practice_message" {
  type    = string
  default = "Terraform practical updated"
}

resource "terraform_data" "practice" {
  input = var.practice_message
}

resource "terraform_data" "count_demo" {
  count = 2
  input = "Count item ${count.index + 1}"
}

resource "terraform_data" "each_demo" {
  for_each = toset(["dev", "test"])
  input    = each.key
}

module "message_demo" {
  source  = "./modules/message"
  message = "Hello from module"
}
resource "terraform_data" "dependent_demo" {
  input      = "This depends on practice resource"
  depends_on = [terraform_data.practice]
}
