resource "aws_iam_group" "ci_group" {
  name = format("%s-group", var.env)
}

resource "aws_iam_group_policy_attachment" "attach_policy" {
  group      = aws_iam_group.ci_group.name
  policy_arn = aws_iam_policy.ci_assumerole.arn
}