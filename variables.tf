variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-2"
}

variable "access_key" {
  description = "aws access key"
  type        = string
  default     = "null"
}

variable "secret_key" {
  description = "aws secret key"
  type        = string
  default     = "null"
}

variable "domain" {
  description = "The name of the Elasticsearch Domain"
  type        = string
  default     = "securityai-elasticsearch"
}

variable "elasticsearch_version" {
  type        = string
  default     = "7.10"
  description = "Version of Elasticsearch to deploy (_e.g._ `7.1`, `6.8`, `6.7`, `6.5`, `6.4`, `6.3`, `6.2`, `6.0`, `5.6`, `5.5`, `5.3`, `5.1`, `2.3`, `1.5`"
}

variable "instance_type" {
  type        = string
  description = "Elasticsearch instance type for data nodes in the cluster"
  default     = "t2.micro.elasticsearch"
}

variable "instance_count" {
  type        = number
  description = "Number of data nodes in the cluster"
  default     = 1
}

variable "zone_awareness_enabled" {
  type        = bool
  default     = true
  description = "Enable zone awareness for Elasticsearch cluster, Availability zones awareness"
}

variable "availability_zone_count" {
  description = "Number of availability zones used for data nodes (default 2)"
  type        = number
  default     = 3
}

variable "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain"
  type        = bool
  default     = true
}

variable "ebs_volume_size" {
  type        = number
  description = "EBS volumes for data storage in GB"
  default     = 20
}

variable "ebs_volume_type" {
  description = "The type of EBS volumes attached to data nodes"
  type        = string
  default     = "gp2"
}

variable "encrypt_at_rest_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable encryption at rest"
}

variable "node_to_node_encryption_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable node-to-node encryption"
}

variable "enforce_https" {
  type        = bool
  default     = true
  description = "Enforce https"
}

variable "log_publishing_index_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether log publishing option for INDEX_SLOW_LOGS is enabled or not"
}

variable "log_publishing_search_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether log publishing option for SEARCH_SLOW_LOGS is enabled or not"
}

variable "log_publishing_application_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether log publishing option for ES_APPLICATION_LOGS is enabled or not"
}

variable "index_slow_log_group_arn" {
  description = "Index slow logs ARN"
  default     = ""
}

variable "search_slow_log_group_arn" {
  description = "Search slow logs ARN"
  default     = ""
}

variable "es_application_log_group_arn" {
  description = "Error logs ARN"
  default     = ""
}

variable "audit_log_group_arn" {
  description = "Audit logs ARN"
  default     = ""
}

variable "advanced_security_options_enabled" {
  type        = bool
  default     = true
  description = "Advanced security option"
}

variable "internal_user_database_enabled" {
  type        = bool
  default     = true
  description = ""
}

variable "dedicated_master_enabled" {
  type        = bool
  default     = true
  description = "Indicates whether dedicated master nodes are enabled for the cluster"
}

variable "dedicated_master_count" {
  type        = number
  description = "Number of dedicated master nodes in the cluster"
  default     = 0
}

variable "dedicated_master_type" {
  type        = string
  default     = "t2.micro.elasticsearch"
  description = "Instance type of the dedicated master nodes in the cluster"
}


variable "master_user_name" {}
variable "master_user_password" {}


locals {
  index_slow_log_group_arn     = var.index_slow_log_group_arn
  search_slow_log_group_arn    = var.search_slow_log_group_arn
  es_application_log_group_arn = var.es_application_log_group_arn
  audit_log_group_arn          = var.audit_log_group_arn
}
