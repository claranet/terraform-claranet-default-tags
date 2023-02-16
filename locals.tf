locals {
  url_regex = "(?P<protocol>https?:\\/\\/|git@)(?P<auth>[-a-zA-Z0-9_]+:[-a-zA-Z0-9%._\\+~#=]+@)?(?P<domain>[-a-zA-Z0-9._]{1,256}\\.[a-zA-Z0-9()]{1,6})[:/](?P<path>[-a-zA-Z0-9()@:%_\\+~#?&//=]*)(?P<suffix>\\.git)?"

  iac_git_url = join(
    ",",
    [
      for url in data.git_remote.current.urls :
      format("%s/%s", regex(local.url_regex, url)["domain"], regex(local.url_regex, url)["path"])
    ]
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
