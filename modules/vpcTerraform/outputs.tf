output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.public.*.id
}

output "security_group_ids" {
  description = "The IDs of the security groups"
  value       = aws_security_group.main.*.id
}

output "route_table_ids" {
  description = "The IDs of the route tables"
  value       = aws_route_table.main.*.id
}
