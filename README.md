# claranet-terraform-default-tags

Claranet's Terraform default tags module is here to help you deploy
[Claranet's tagging policy](https://claranet-fr.atlassian.net/wiki/spaces/CCoE/pages/782927917/Tagging+Policy+v2)
on your projects.

## Usage

On AWS you can use module output to set the `default_tags` parameter of the
AWS provider:

```hcl
module "default_tags" {
  source = "git@git.fr.clara.net:claranet/projects/cloud/ccoe/claranet-terraform-default-tags.git"

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
