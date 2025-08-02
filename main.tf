provider "aws" {
  region = var.common_region
}

module "myGroupAndUsers" {
  source              = "./modules/group_and_users"
  iam_group_name      = var.iam_group_name
  iam_user_names      = var.iam_user_names
  custom_policy_files = var.custom_policy_files

  tags = {
    Project   = var.common_project_name
    Env       = var.common_env
    CreatedBy = "Terraform"
  }
}
