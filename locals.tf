locals {
  url_regex = "(?P<protocol>https?:\\/\\/|git@)(?P<auth>[-a-zA-Z0-9_]+:[-a-zA-Z0-9%._\\+~#=]+@)?(?P<domain>[-a-zA-Z0-9._]{1,256}\\.[a-zA-Z0-9()]{1,6})[:/](?P<path>[-a-zA-Z0-9()@:%_\\+~#?&//=]*)(?P<suffix>\\.git)?"

  git_remotes_urls = try(data.git_remotes.current.remotes[var.git_remote_name].urls, [])
  iac_git_url = join(
    ",",
    [
      for url in local.git_remotes_urls :
      format("%s/%s", regex(local.url_regex, url)["domain"], regex(local.url_regex, url)["path"])
    ]
  )

  git_paths = compact([
    for relpath in [".", "..", "../..", "../../..", "../../../..", "../../../../.."] :
    try(fileexists(format("%s/%s/.git/HEAD", path.root, relpath)), false) ? format("%s/%s", path.root, relpath) : null
  ])

  git_path = abspath(local.git_paths[0])

  // coalesce() is used to avoid an empty string when the current path is the
  // Git root path. Terraform plan with AWS provider default_tags and empty
  // string returns "known after apply".
  // Linked to: https://github.com/hashicorp/terraform-provider-aws/issues/18311
  iac_base_path = trimprefix(
    coalesce(
      trimprefix(
        abspath(path.root),
        local.git_path,
      ),
      "."
    ),
    "/",
  )

  generated_tags = {
    application_stack_name = var.application_stack_name
    claranet_project_id    = var.synapps_project_id
    claranet_status        = var.synapps_status
    deployed_by            = var.deployed_by
    env                    = var.environment
    iac_base_path          = local.iac_base_path
    iac_git_url            = local.iac_git_url
    managed_by             = var.managed_by
    owner                  = var.owner
    stack                  = var.stack
    supervised_by          = var.supervised_by
  }

  compacted_tags = {
    for k, v in local.generated_tags : k => v if v != null
  }
}
