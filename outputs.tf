# outputs #

output "sqa_auth_database_name" {
  value = module.oreg_sqa_auth.database_name
}

output "sqa_auth_user" {
  sensitive = true
  value     = module.oreg_sqa_auth.user
}

output "sqa_auth_user_password" {
  value = module.oreg_sqa_auth.user_password
}

output "sqa_auth_user_privileges" {
  value = module.oreg_sqa_auth.user_privileges
}

output "sqa_dataxform_database_name" {
  value = module.oreg_sqa_dataxform.database_name
}

output "sqa_dataxform_user" {
  sensitive = true
  value     = module.oreg_sqa_dataxform.user
}

output "sqa_dataxform_user_password" {
  value = module.oreg_sqa_dataxform.user_password
}

output "sqa_dataxform_user_privileges" {
  value = module.oreg_sqa_dataxform.user_privileges
}

output "sqa_user_database_name" {
  value = module.oreg_sqa_user.database_name
}

output "sqa_user_user" {
  sensitive = true
  value     = module.oreg_sqa_user.user
}

output "sqa_user_user_password" {
  value = module.oreg_sqa_user.user_password
}

output "sqa_user_user_privileges" {
  value = module.oreg_sqa_user.user_privileges
}

