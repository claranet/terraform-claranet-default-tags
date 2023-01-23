variable "application_stack_name" {
  default  = null
  nullable = true
  type     = string
}

variable "claranet_project_id" {
  default  = null
  nullable = true
  type     = string
}

variable "deployed_by" {
  default = "terraform"
  type    = string
}

variable "environment" {
  type = string
}

variable "git_remote_name" {
  default = "origin"
  type    = string
}

variable "managed_by" {
  default = "claranet"
  type    = string
}

variable "owner" {
  default  = null
  nullable = true
  type     = string
}

variable "stack" {
  default  = null
  nullable = true
  type     = string
}

variable "supervised_by" {
  default = "claranet"
  type    = string
}
