resource "aws_iam_policy" "ci_assumerole" {
  name        = format("%s-AssumeRolePolicy", var.env)
  path        = "/"
  policy      = data.aws_iam_policy_document.allow_assume_role.json
  tags = {
      Type = "Policy"
    }
}