output "db_instance_endpoint" {
  description = "Endpoint do banco de dados."
  value       = aws_db_instance.db_instance.endpoint
}
