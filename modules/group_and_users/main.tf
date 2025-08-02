resource "aws_iam_group" "admin_group" {
  name = var.iam_group_name
}

resource "aws_iam_policy" "custom_policies" {
  for_each    = var.custom_policy_files
  name        = each.key
  description = "${each.key} attached from file"
  policy      = file(each.value)
}

resource "aws_iam_user" "users" {
  for_each = toset(var.iam_user_names)
  name     = each.key
}

resource "aws_iam_group_membership" "admin_group_membership" {
  name  = "${var.iam_group_name}-members"
  group = aws_iam_group.admin_group.name
  users = [for user in aws_iam_user.users : user.name]
}

resource "aws_iam_group_policy_attachment" "policy_attachments" {
  for_each   = aws_iam_policy.custom_policies
  group      = aws_iam_group.admin_group.name
  policy_arn = each.value.arn
}
