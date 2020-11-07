variable "repository_name" {
  description = "The repository name"
  type        = string
}

variable "repository_description" {
  description = "The repository description"
  type        = string
  default     = ""
}

variable "visibility" {
  description = "The visibility for repository (public/private)"
  type        = string
  default     = "private"
}

variable "vulnerability_alerts" {
  description = "Enable or not vulnerability alerts"
  type        = bool
  default     = true
}

variable "protect_branch" {
  description = "Enable protected branch"
  type        = bool
  default     = true
}

variable "branch_pattern" {
  description = "Pattern for protected branch"
  type        = string
  default     = "master"
}

variable "protected_branch_enforce_admins" {
  description = "Enforce protected branch for admins"
  type        = bool
  default     = true
}