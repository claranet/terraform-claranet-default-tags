locals {
  iac_git_url = join(",", data.git_remote.current.urls)

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
