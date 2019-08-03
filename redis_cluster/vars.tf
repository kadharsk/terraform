variable "cluster_id" {
  description = "Cluster ID for the redis cluster"
}

variable "engine_version" {
  description = "Version of Redis engine"
}

variable "replication_group_description" {
  description = "Description of replication group"
  default = "prod-redis-cluster"
}

variable "instance_type" {
  description = "Type of the node for redis cluster"
  default = "cache.t2.small"
}


variable "num_cache_nodes" {
  description = "Number of nodes for redis cluster"
  default = "1"
}

variable "parameter_group_name" {
  description = "Parameter Group Name for the Redis Cluster"
  default = "default.redis3.2"
}

variable "port" {
  description = "Port number for service discovery"
  default = "6379"
}

variable "security_group_ids" {
  description = "ID of the security group which should be on Redis Cluster"
  type = "list"
}

variable "snapshot_window" {
  description = "Time of the snapshot window"
  default = "04:00-05:00"
}

variable "snapshot_retention_limit" {
  description = " The number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them"
  default = "10"
}

variable "availability_zones" {
  description = "The Availability Zone for the cache cluster."
  type = "list"
}

variable "subnet_list" {
  description = "Name of the subnet group to be used for the cache cluster."
  type = "list"
}

variable "name" {
  description = "Name of the redis cluster"
  default     = "prod-redis-cluster"
}
