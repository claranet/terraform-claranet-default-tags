output "default_tags" {
  value = {
    application_stack_name = var.application_stack_name
    claranet_project_id    = var.claranet_project_id
    deployed_by            = var.deployed_by
    env                    = var.environment
    iac_base_path          = local.iac_base_path
    iac_git_url            = local.iac_git_url
    managed_by             = var.managed_by
    owner                  = var.owner
    stack                  = var.stack
    supervised_by          = var.supervised_by
  }
}
