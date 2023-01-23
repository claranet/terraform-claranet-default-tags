data "git_remote" "current" {
  directory = local.git_path
  name      = var.git_remote_name
}
