output "aws_vpc" {
  value = aws_vpc.this.id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "region" {
  value = var.region
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}
