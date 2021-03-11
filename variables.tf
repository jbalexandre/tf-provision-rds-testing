# locals #

# # maps of acronyms 
# locals {
#   region_acronym = {
#     "us-east-1" = "nvir"
#     "us-east-2" = "ohio"
#     "us-west-2" = "oreg"
#   }

#   environment_acronym = {
#     production  = "prod"
#     development = "dev"
#     testing     = "test"
#   }

#   project_acronym = {
#     powerdata = "pd"
#   }

#   micro_services = {
#     auth      = "auth-svc"
#     dataxform = "data-xform-svc"
#     user      = "user-svc"
#   }

#   database_name = {
#     auth-svc       = "auth"
#     data-xform-svc = "dataxform"
#     user-svc       = "user"
#   }
# }

# default tags for resources
locals {
  infrastructure_tags = {
    environment   = "sqa"
    provisionedby = "terraform"
    service       = "rds"
  }

  business_tags = {
    product-family   = "LifeSafety"
    product-line     = "powerdata"
    application-name = ""
    account-name     = data.aws_caller_identity.current.account_id
  }

  resource_tags = merge(local.infrastructure_tags, local.business_tags)
}

# map to network configuration of environments
locals {
  cluster_configuration_map = {
    pisces = {
      region = "us-east-1"
      name   = "pisces"

      databases = {
        "auth-svc"       = "sqa_auth"
        "data-xform-svc" = "sqa_dataxform"
        "user-svc"       = "sqa_user"
      }
    }
  }
}

# consolidation of environments into workspaces
locals {
  cfg        = local.cluster_configuration_map[terraform.workspace]
  ssm_prefix = "${local.cfg["name"]}/${local.infrastructure_tags["service"]}/${local.cfg["name"]}"
}
