#################################################################
# Common Variables
#################################################################
variable "common_project_name" {
  description = "Name of IAM group"
  type        = string
}

variable "common_region" {
  description = "AWS region"
  type        = string
}

variable "common_env" {
  description = "AWS environment (e.g., dev, prod)"
  type        = string
}

#################################################################
# Variables for IAM module
#################################################################
variable "iam_group_name" {
  description = "Name of IAM group"
  type        = string
}

variable "iam_user_names" {
  description = "List of IAM user names"
  type        = list(string)
}

variable "custom_policy_files" {
  description = "Map of policy name to JSON file path"
  type        = map(string)
}
