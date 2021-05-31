data "aws_iam_policy_document" "allow_assume_role" {
  statement {
    sid    = "AllowAssumeRoleToIAMRole"
    effect = "Allow"
    actions = [
      "sts:AssumeRole",
    ]
    resources = [aws_iam_role.ci_role.arn]

  }
}