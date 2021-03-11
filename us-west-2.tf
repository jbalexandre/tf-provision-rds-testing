# create databases

module "oreg_sqa_auth" {
  source = "git@github.com:WestPowerData/terraform-aws-provision-mysql.git"

  # rds instance
  instance_endpoint        = data.aws_ssm_parameter.instance_endpoint.value
  instance_master_username = data.aws_ssm_parameter.master_username.value
  instance_master_password = data.aws_ssm_parameter.master_password.value

  # databases
  database_name = local.cfg.databases["auth-svc"]

  # user
  user_id  = local.cfg.databases["auth-svc"]
  password = data.aws_ssm_parameter.sqa_auth_password.value
}

module "oreg_sqa_dataxform" {
  source = "git@github.com:WestPowerData/terraform-aws-provision-mysql.git"

  # rds instance
  instance_endpoint        = data.aws_ssm_parameter.instance_endpoint.value
  instance_master_username = data.aws_ssm_parameter.master_username.value
  instance_master_password = data.aws_ssm_parameter.master_password.value

  # databases
  database_name = local.cfg.databases["data-xform-svc"]

  # user
  user_id  = local.cfg.databases["data-xform-svc"]
  password = data.aws_ssm_parameter.sqa_dataxform_password.value
}

module "oreg_sqa_user" {
  source = "git@github.com:WestPowerData/terraform-aws-provision-mysql.git"

  # rds instance
  instance_endpoint        = data.aws_ssm_parameter.instance_endpoint.value
  instance_master_username = data.aws_ssm_parameter.master_username.value
  instance_master_password = data.aws_ssm_parameter.master_password.value

  # databases
  database_name = local.cfg.databases["user-svc"]

  # user
  user_id  = local.cfg.databases["user-svc"]
  password = data.aws_ssm_parameter.sqa_user_password.value
}
