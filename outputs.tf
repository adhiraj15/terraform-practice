output "practice_message" {
  value = terraform_data.practice.output
}

output "practice_resource_id" {
  value = terraform_data.practice.id
}

output "module_message" {
  value = module.message_demo.message
}