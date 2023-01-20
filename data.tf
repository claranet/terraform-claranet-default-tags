data "git_repository" "current" {
  directory = abspath(var.git_repository_root_path)
}

data "git_remote" "origin" {
  directory = abspath(var.git_repository_root_path)
  name      = "origin"
}
