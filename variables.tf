variable "application_stack_name" {
  default     = null
  description = "Application stack name"
  nullable    = true
  type        = string
}

variable "synapps_project_id" {
  default     = null
  description = "Project ID as defined in Claranet SynApps CMDB to set the claranet_project_id tag"
  nullable    = true
  type        = string
}

variable "deployed_by" {
  default     = "terraform"
  description = "How the resources are managed"
  type        = string
}

variable "environment" {
  description = "What is the environment of the resources"
  type        = string
}

variable "git_remote_name" {
  default     = "origin"
  description = "Git remote name"
  type        = string
}

variable "managed_by" {
  default     = "claranet"
  description = "Who is managing the resources"
  nullable    = true
  type        = string
}

variable "owner" {
  default     = null
  description = "Who is owner of the resources"
  nullable    = true
  type        = string
}

variable "stack" {
  default     = null
  description = "Terraform stack name"
  nullable    = true
  type        = string
}

variable "supervised_by" {
  default     = "claranet"
  description = "Who is supervising the resources"
  type        = string
}

variable "compact_outputed_tags" {
  default     = true
  type        = bool
  description = "Remove generated tags when value is null"
  nullable    = false
}
