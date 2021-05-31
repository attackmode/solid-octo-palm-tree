resource "aws_iam_role" "ci_role" {
  name               = format("%s-role", var.env)
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          type        = "AWS"
          identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.id}:root"]
        }
      },
    ]
  })
  tags = {
      Type = "Role"
  }
}