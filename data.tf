data "git_remotes" "current" {
  directory = local.git_path
}

data "git_repository" "main" {
  directory = local.git_path
}
