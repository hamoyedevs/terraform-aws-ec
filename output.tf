output "domain_arn" {
  value       = aws_elasticsearch_domain.secai_elasticsearch.arn
  description = "ARN of the Elasticsearch domain"
}

output "domain_id" {
  value       = aws_elasticsearch_domain.secai_elasticsearch.domain_id
  description = "Unique identifier for the Elasticsearch domain"
}

output "domain_name" {
  value       = aws_elasticsearch_domain.secai_elasticsearch.domain_name
  description = "Domain name for the Elasticsearch domain"
}

output "domain_endpoint" {
  value       = aws_elasticsearch_domain.secai_elasticsearch.endpoint
  description = "Domain-specific endpoint used to submit index, search, and data upload requests"
}

output "kibana_endpoint" {
  value       = aws_elasticsearch_domain.secai_elasticsearch.kibana_endpoint
  description = "Domain-specific endpoint for kibana without https scheme."
}
