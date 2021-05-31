resource "aws_iam_user" "ci_user" {
  count = "${length(var.ci-user)}"
  name  = "${element(var.ci-user,count.index)}"
}

resource "aws_iam_user_group_membership" "ci_user" {
  user = aws_iam_user.ci_user.name

  groups = [
    aws_iam_group.ci_user.name,
  ]
}