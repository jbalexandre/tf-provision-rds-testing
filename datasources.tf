# data sources #

# get account information
data "aws_caller_identity" "current" {}

# get instance endpoint
data "aws_ssm_parameter" "instance_endpoint" {
  name            = "/${local.ssm_prefix}/host"
  with_decryption = true
}

# get master username
data "aws_ssm_parameter" "master_username" {
  name            = "/${local.ssm_prefix}/master-username"
  with_decryption = true
}

# get master password
data "aws_ssm_parameter" "master_password" {
  name            = "/${local.ssm_prefix}/master-password"
  with_decryption = true
}

# get sqa_auth password
data "aws_ssm_parameter" "sqa_auth_password" {
  name            = "/${local.ssm_prefix}/${local.infrastructure_tags["environment"]}/auth-svc/password"
  with_decryption = true
}

# get sqa_dataxform password
data "aws_ssm_parameter" "sqa_dataxform_password" {
  name            = "/${local.ssm_prefix}/${local.infrastructure_tags["environment"]}/data-xform-svc/password"
  with_decryption = true
}

# get sqa_user password
data "aws_ssm_parameter" "sqa_user_password" {
  name            = "/${local.ssm_prefix}/${local.infrastructure_tags["environment"]}/user-svc/password"
  with_decryption = true
}
