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

variable "synapps_status" {
  default     = null
  description = "Resource status as defined in Claranet SynApps CMDB to override the status field"
  nullable    = true
  type        = string
  validation {
    condition = (
      var.synapps_status == null ? true : contains(["BUILDING", "RELEASED", "UNPROVISIONNED", "UNPROVISIONNING", "SUPPLIED", null], var.synapps_status)
    )
    error_message = "Invalid value for synapps_status. Allowed values are: BUILDING, RELEASED, UNPROVISIONNED, UNPROVISIONNING, SUPPLIED, null (default)."
  }
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
