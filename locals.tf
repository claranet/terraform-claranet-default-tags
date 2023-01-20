locals {
  iac_git_url = format(
    "%s/%s",
    var.git_repository_base_url,
    regex(
      var.git_repository_regex,
      data.git_remotes.current.remotes["origin"].urls[0]
    )["repository_path"]
  )

  iac_base_path = trimprefix(
    abspath(path.root),
    format("%s/", local.git_path),
  )

  git_paths = compact([for relpath in [".", "..", "../..", "../../..", "../../../..", "../../../../.."] :
    fileexists(
    format("%s/%s/.git/HEAD", path.root, relpath)) ? format("%s/%s", path.root, relpath) : null
  ])

  git_path = abspath(local.git_paths[0])
}
