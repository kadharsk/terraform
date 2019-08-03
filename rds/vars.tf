variable "rds_instance_name" {
    description = "Name of the rds instance"
}

variable "rds_is_multi_az" {
    description = "if we want our rds to be single AZ then change the default value to false"
    default = "false"
}


variable "rds_storage_type" {
    description = "This the storage type weather we want standard or provisioned IOPS"
    default = "standard"
}


variable "rds_allocated_storage" {
    description = "The allocated storage in GBs"
}


variable "rds_engine_type" {
    description = "Valid types are mysql and postgres"
    default  = "mysql"
}

variable "rds_engine_version" {
    description = "This is engine version we want to install to"
    default = "5.7"
}


variable "rds_instance_class" {
    description = "This is engine version we want to install to"
    default  = "db.t2.micro"
}



variable "database_name" {
    description = "The name of the database to create"
}



variable "database_user" {
    description = "Name of the user of database of RDS"
}


variable "database_password" {
    description = "Name of the user of database of RDS"
}


variable "publicly_accessible" {
    description = "if you want rds to be public then just change the default value to true"
    default = "false"
}


variable "subnet_list" {
  description = "List of the subnets in which RDS instance should be created"
  type = "list"
}

variable "rds_security_group_ids" {
  description = "List of the security group in which RDS instance should be created"
  type = "list"
}
