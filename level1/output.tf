output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet" {
  value = aws_subnet.public[*].id
}

output "vpc_region" {
  value = var.vpc_region
}
