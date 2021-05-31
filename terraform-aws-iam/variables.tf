variable "env" {
  type = "string"
  description = "environment name"
}

variable "region" {
  type = "string"
  description = "AWS region"
}

variable "role_arn" {
  type = "string"
  description = "aws role arn"
}

variable "ci-user" {
  type = "list"
  description = "user list"
}



