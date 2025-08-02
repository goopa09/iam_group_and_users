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
