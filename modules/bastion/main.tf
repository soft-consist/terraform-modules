resource "aws_iam_role" "bastion_access_role" {
  name = "${var.env}-bastion-access-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        AWS = var.bastion_assume_role_principals
      }
      Action = "sts:AssumeRole"
    }]
  })

  tags = var.tags
}
