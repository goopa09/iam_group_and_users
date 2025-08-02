provider "aws" {
  region = "ap-northeast-2"
}

module "myGroupAndUsers" {
  source              = "./modules/group_and_users"
  iam_group_name      = var.iam_group_name
  iam_user_names      = var.iam_user_names
  custom_policy_files = var.custom_policy_files
}
