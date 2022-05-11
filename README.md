# Elasticsearch Domain
Using this terraform template we can provision AWS Elasticsearch service with Kibana.


## Fine-Grained Access Control Requirements
- Elasticsearch 7.10 or later
- Encryption of data at rest and node-to-node encryption enabled
- Require HTTPS for all traffic to the domain enabled Source: <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/fgac.html#fgac-enabling>

Note: Fine-grained access control can only be enabled on new domains. Once enabled, it cannot be disabled.

![SECAI-ES-API - Terraform-aws-es](https://user-images.githubusercontent.com/25388109/153174972-02069299-60a3-4530-9a0f-9d8c06132a50.png)

## Variables input are as follows:

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| advanced_options | Key-value string pairs to specify advanced configuration options | map(string) | `<map>` | no |
| automated_snapshot_start_hour | Hour at which automated snapshots are taken, in UTC | number | `0` | no |
| availability_zone_count | Number of Availability Zones for the domain to use. | number | `3` | no |
| dedicated_master_count | Number of dedicated master nodes in the cluster | number | `0` | no |
| dedicated_master_enabled | Indicates whether dedicated master nodes are enabled for the cluster | bool | `false` | no |
| dedicated_master_type | Instance type of the dedicated master nodes in the cluster | string | `r5.large.elasticsearch` | no |
| ebs_iops | The baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the Provisioned IOPS EBS volume type | number | `0` | no |
| ebs_volume_size | EBS volumes for data storage in GB | number | `25` | no |
| ebs_volume_type | Storage type of EBS volumes | string | `gp2` | no |
| elasticsearch_version | Version of Elasticsearch to deploy | string | `7.10` | no |
| enabled | Set to false to prevent the module from creating any resources | bool | `true` | no |
| encrypt_at_rest_enabled | Whether to enable encryption at rest | bool | `true` | no |
| encrypt_at_rest_kms_key_id | The KMS key ID to encrypt the Elasticsearch domain with. If not specified, then it defaults to using the AWS/Elasticsearch service KMS key | string | `` | no |
| instance_count | Number of data nodes in the cluster | number | `4` | no |
| instance_type | Elasticsearch instance type for data nodes in the cluster | string | `r5.large.elasticsearch` | no |
| log_publishing_application_cloudwatch_log_group_arn | ARN of the CloudWatch log group to which log for ES_APPLICATION_LOGS needs to be published | string | `` | no |
| log_publishing_application_enabled | Specifies whether log publishing option for ES_APPLICATION_LOGS is enabled or not | bool | `false` | no |
| log_publishing_index_cloudwatch_log_group_arn | ARN of the CloudWatch log group to which log for INDEX_SLOW_LOGS needs to be published | string | `` | no |
| log_publishing_index_enabled | Specifies whether log publishing option for INDEX_SLOW_LOGS is enabled or not | bool | `false` | no |
| log_publishing_search_cloudwatch_log_group_arn | ARN of the CloudWatch log group to which log for SEARCH_SLOW_LOGS needs to be published | string | `` | no |
| log_publishing_search_enabled | Specifies whether log publishing option for SEARCH_SLOW_LOGS is enabled or not | bool | `false` | no |
| domain_name | Name of the application | string | - | yes |
| node_to_node_encryption_enabled | Whether to enable node-to-node encryption | bool | `false` | no |
| zone_awareness_enabled | Enable zone awareness for Elasticsearch cluster | bool | `true` | no |


## Outputs

| Name | Description |
|------|-------------|
| domain_arn | ARN of the Elasticsearch domain |
| domain_endpoint | Domain-specific endpoint used to submit index, search, and data upload requests |
| domain_name | Elasticsearch domain hostname to submit index, search, and data upload requests |
| domain_id | Unique identifier for the Elasticsearch domain |
| kibana_endpoint | Domain-specific endpoint for kibana without https scheme |


## Providers

| Name | Version |
|------|-------------|
| aws  | >= 3.35.0 |


### Configure AWS Provider
To run, configure your AWS provider as described in <https://www.terraform.io/docs/providers/aws/index.html>



### Run the Stack

For downloading code for the provider(aws)

`terraform init` : 


Rewrite terraform configuration files in a canonical format.

`terraform fmt`


Validate the Configuration

`terraform validate`


For planning phase

`terraform plan`


For apply phase (To apply the changes)

`terraform apply`


To remove the stack

`terraform destroy`
