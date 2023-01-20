terraform {
  required_version = ">= 1"

  required_providers {
    git = {
      source  = "metio/git"
      version = "2023.1.20"
    }
  }
}
