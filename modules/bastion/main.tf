resource "aws_instance" "bastion" {
  ami                         = var.bastion_ami
  instance_type               = var.bastion_instance_type
  subnet_id                   = var.bastion_subnet_id
  key_name                    = var.bastion_key_name
  associate_public_ip_address = true

  iam_instance_profile = aws_iam_instance_profile.bastion_profile.name

  tags = {
    Name = "${var.env}-BastionHost"
  }
}


resource "aws_iam_role" "bastion_role" {
  name = "${var.env}-bastion-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })
}


resource "aws_iam_role_policy_attachment" "bastion_eks_access" {
  role       = aws_iam_role.bastion_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}


resource "aws_iam_role_policy_attachment" "bastion_describe" {
  role       = aws_iam_role.bastion_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_instance_profile" "bastion_profile" {
  role = aws_iam_role.bastion_role.name
}
