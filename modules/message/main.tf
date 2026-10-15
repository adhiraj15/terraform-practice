variable "message" {
  type = string
}

resource "terraform_data" "module_demo" {
  input = var.message
}

output "message" {
  value = terraform_data.module_demo.output
}