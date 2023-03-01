## [0.3.0](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.2.6...v0.3.0) (2023-03-01)


### Features

* Rename `claranet_project_id` to `synapps_project_id` ([6397264](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/63972646b0027fedf8ade2212ebecae14581f4cd))


### Continuous Integration

* Add Github release workflow ([5a10ad3](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/5a10ad3de32f160a2211f7c12553b27310d526b8))


### Miscellaneous Chores

* Don't generate dependencies in docs from lockfile ([56051aa](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/56051aa6fe4d009d693576b0dea6ef7a8d48a396))

## [0.2.6](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.2.5...v0.2.6) (2023-02-22)


### Miscellaneous Chores

* Add Apache 2.0 LICENSE ([d56b56a](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/d56b56ac4d33811d43729da1421badfcb90f7220))
* Add NOTICE file ([9d33f76](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/9d33f76ee03dbf5b401933bdcf8f1550075cb8a4))


### Documentation

* Remove internal Claranet tools reference ([22e3fec](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/22e3fecfbdb41b8e895a4532774e7b7461fd05dc))

## [0.2.5](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.2.4...v0.2.5) (2023-02-21)


### Styles

* Rename inputs.tf -> variables.tf ([290c7bf](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/290c7bfaac6e241b1ca7f7daee2e67ffb98bad9d))

## [0.2.4](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.2.3...v0.2.4) (2023-02-21)


### Bug Fixes

* **iac_base_path:** Put back prefix trimming to avoid breaking current behavior ([99deb81](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/99deb81cefaf8746551475f496e6fc7ec66db075))
* **iac_base_path:** Remove prefix trimming ([0bb6606](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/0bb66060294de087e6073bf9e5839940edbe7634))
* **iac_base_path:** Returns . when base path is git root instead of full path ([42f3c03](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/42f3c038d2d99b58ecda5ec44ea32e53eaea2aa9))


### Documentation

* **iac_base_path:** Explain coalesce usage ([3be4ec2](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/3be4ec257a96d08513b840bc3f240c2bfaadc29b))

## [0.2.3](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.2.2...v0.2.3) (2023-02-20)


### Code Refactoring

* **git_remotes:** Don't fail if no git remote is defined ([be75d5a](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/be75d5ab0af8f12a7989977c46e3f69a458f9906))

## [0.2.2](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.2.1...v0.2.2) (2023-02-16)


### Bug Fixes

* **iac_git_url:** Strip from URL protocol, auth and .git suffix ([6f23e66](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/6f23e661a2a7ba91ef417cd129c119626b19f230))


### Continuous Integration

* **semantic-release:** Map SEMANTIC_RELEASE_GITLAB_TOKEN env var ([8173456](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/81734566f1ecc5e5db37eea83ee8a985275435ea))
* **semantic-release:** Use conventional commits instead of angular preset ([17ced55](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/17ced55a8e47d506424b65829ecbdd174569851c))

## [0.2.1](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.2.0...v0.2.1) (2023-02-01)

# [0.2.0](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.1.1...v0.2.0) (2023-01-23)


### Bug Fixes

* Git provider version constraints ([6ae821e](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/6ae821e2f4bd4f03e5507428ab4832ee99aab19a))


### Features

* change `iac_git_url` behavior ([5b2bef2](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/5b2bef2d48a5bc9c4100f3b73b4f2b280424d51d))
* Default to origin for git remote name ([1d3ce26](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/1d3ce2632869598424d9327ab796802c41bc3459))
* Remove git_repository_root_path input ([605b990](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/605b990510a6632114f4b5cf48c1a9df82fe3380))
* Replace Git provider ([97105f1](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/97105f1a828246d1bfe1685600b4178b0ff2893f))

## [0.1.1](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/compare/v0.1.0...v0.1.1) (2023-01-23)


### Bug Fixes

* production branch name in .releaserc ([d4e7f81](https://git.fr.clara.net/claranet/projects/cloud/ccoe/claranet-terraform-default-tags/commit/d4e7f8173c0c893d3488703d6bef22645f8b3ea5))
