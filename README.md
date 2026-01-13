# Claranet Terraform default tags module

Claranet's Terraform default tags module is here to help you deploy Claranet's
tagging policy on your projects.

## Usage

### AWS

On AWS you can use module output to set the `default_tags` parameter of the
AWS provider:

```hcl
module "default_tags" {
  source = "github.com/claranet/claranet-terraform-default-tags"

  environment              = var.environment
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

### Azure

On Azure using [Claranet modules](https://registry.terraform.io/search/modules?namespace=claranet)
you can use the `extra_tags` parameter:

```hcl
module "default_tags" {
  source = "github.com/claranet/claranet-terraform-default-tags"

  environment = var.environment
}

module "azure_region" {
  source  = "claranet/regions/azurerm"

  azure_region = var.azure_region
}

module "rg" {
  source  = "claranet/rg/azurerm"

  location    = module.azure_region.location
  client_name = var.client_name
  environment = var.environment
  stack       = var.stack

  extra_tags = module.default_tags.default_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_git"></a> [git](#requirement\_git) | >= 2023.1.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_git"></a> [git](#provider\_git) | >= 2023.1.20 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [git_remotes.current](https://registry.terraform.io/providers/metio/git/latest/docs/data-sources/remotes) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_stack_name"></a> [application\_stack\_name](#input\_application\_stack\_name) | Application stack name | `string` | `null` | no |
| <a name="input_custom_iac_git_url"></a> [custom\_iac\_git\_url](#input\_custom\_iac\_git\_url) | Optional custom iac git url | `string` | `null` | no |
| <a name="input_deployed_by"></a> [deployed\_by](#input\_deployed\_by) | How the resources are managed | `string` | `"opentofu"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | What is the environment of the resources | `string` | n/a | yes |
| <a name="input_git_remote_name"></a> [git\_remote\_name](#input\_git\_remote\_name) | Git remote name | `string` | `"origin"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | Who is managing the resources | `string` | `"claranet"` | no |
| <a name="input_monitored_by_claranet"></a> [monitored\_by\_claranet](#input\_monitored\_by\_claranet) | Whether the resources are monitored by Claranet (tag `claranet_monitored:true`) | `bool` | `true` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Who is owner of the resources | `string` | `null` | no |
| <a name="input_stack"></a> [stack](#input\_stack) | Terraform stack name | `string` | `null` | no |
| <a name="input_supervised_by"></a> [supervised\_by](#input\_supervised\_by) | Who is supervising the resources | `string` | `"claranet"` | no |
| <a name="input_synapps_project_id"></a> [synapps\_project\_id](#input\_synapps\_project\_id) | Project ID as defined in Claranet SynApps CMDB to set the claranet\_project\_id tag | `string` | `null` | no |
| <a name="input_synapps_status"></a> [synapps\_status](#input\_synapps\_status) | Resource status as defined in Claranet SynApps CMDB to override the status field | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_tags"></a> [default\_tags](#output\_default\_tags) | Generated default tags. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

To automatically install required plugins and versions with `asdf` use:

```shell
make dev-install
```

### asdf

[asdf](https://github.com/asdf-vm/asdf) allows to easily manage tools version
per project.
See [documentation](https://asdf-vm.com/guide/getting-started.html#_3-install-asdf)
for installation instructions.

Versions are described in the `.tool-versions` file. If you already have the
required plugins installed, simply run:

```shell
asdf install
```

### pre-commit

To enable `pre-commit` hooks, run:

```shell
pre-commit install
```

### terraform-docs

To update Terraform documentation in `README.md` run:

```shell
make docs
```

### tflint and tfsec

To manually run linters run:

```shell
make lint
```
