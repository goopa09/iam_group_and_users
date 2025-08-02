variable "iam_group_name" {
  type        = string
  description = "IAM group name"
}

variable "iam_user_names" {
  type        = list(string)
  description = "List of IAM user names"
}

variable "custom_policy_files" {
  type        = map(string)
  description = "Map of policy name to JSON file path"
}
