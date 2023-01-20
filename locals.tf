locals {
  iac_git_url = format(
    "%s/%s",
    var.git_repository_base_url,
    regex(
      var.git_repository_regex,
      data.git_remote.origin.urls[0]
    )["repository_path"]
  )
  iac_base_path = trimprefix(
    abspath(path.root),
    format("%s/", abspath(data.git_repository.current.directory))
  )
}
