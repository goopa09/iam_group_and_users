#################################################################
# Common Variables
###########################################################
common_project_name = "MyProject"
common_region       = "ap-northeast-2"
common_env          = "dev"

#################################################################
# Variables for IAM module
#################################################################
iam_group_name = "AdminGroup"

iam_user_names = ["user1", "user3", "user4"]

custom_policy_files = {
  CustomPolicy1 = "policies/CustomPolicy1.json"
  CustomPolicy2 = "policies/CustomPolicy2.json"
}
