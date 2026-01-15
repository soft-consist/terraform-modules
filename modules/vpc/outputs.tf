output "aws_vpc" {
  value = aws_vpc.this.id
}

output "private_subnets_ids" {
  value = aws_subnet.private[*].id
}