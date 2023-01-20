# claranet-terraform-default-tags

Claranet's Terraform default tags module is here to help you deploy
[Claranet's tagging policy](https://claranet-fr.atlassian.net/wiki/spaces/CCoE/pages/782927917/Tagging+Policy+v2)
on your projects.

## Usage

On AWS you can use module output to set the `default_tags` parameter of the
AWS provider:

```hcl
module "default_tags" {
  source = "git@git.fr.clara.net:claranet/projects/cloud/ccoe/claranet-terraform-default-tags.git?ref=v0.1.0"

  environment              = var.environment
  git_repository_root_path = "../../../.."
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_token

  default_tags {
    tags = module.default_tags.default_tags
  }
}
```

You can add any tag you want by merging the output with additional tags:

```hcl
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_token

  default_tags {
    tags = merge(
      module.default_tags.default_tags,
      {
        environment = var.environment
      }
    )
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_git"></a> [git](#requirement\_git) | 0.1.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_git"></a> [git](#provider\_git) | 0.1.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [git_repository.current](https://registry.terraform.io/providers/innovationnorway/git/0.1.3/docs/data-sources/repository) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_stack_name"></a> [application\_stack\_name](#input\_application\_stack\_name) | n/a | `string` | `null` | no |
| <a name="input_claranet_project_id"></a> [claranet\_project\_id](#input\_claranet\_project\_id) | n/a | `string` | `null` | no |
| <a name="input_deployed_by"></a> [deployed\_by](#input\_deployed\_by) | n/a | `string` | `"terraform"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | n/a | yes |
| <a name="input_git_repository_base_url"></a> [git\_repository\_base\_url](#input\_git\_repository\_base\_url) | n/a | `string` | `"https://git.fr.clara.net"` | no |
| <a name="input_git_repository_regex"></a> [git\_repository\_regex](#input\_git\_repository\_regex) | n/a | `string` | `"^.*git.fr.clara.net[:/](?P<repository_path>[\\w-/]+).git"` | no |
| <a name="input_git_repository_root_path"></a> [git\_repository\_root\_path](#input\_git\_repository\_root\_path) | n/a | `string` | n/a | yes |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | n/a | `string` | `"claranet"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `null` | no |
| <a name="input_stack"></a> [stack](#input\_stack) | n/a | `string` | `null` | no |
| <a name="input_supervised_by"></a> [supervised\_by](#input\_supervised\_by) | n/a | `string` | `"claranet"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_tags"></a> [default\_tags](#output\_default\_tags) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
