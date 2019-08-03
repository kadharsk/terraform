resource "aws_elasticache_cluster" "redis" {
    cluster_id                      = "${var.cluster_id}"
    engine                          = "redis"
    engine_version                  = "${var.engine_version}"
    preferred_availability_zones    = "${var.availability_zones}"
    node_type                       = "${var.instance_type}"
    num_cache_nodes                 = "${var.num_cache_nodes}"
    parameter_group_name            = "${var.parameter_group_name}"
    port                            = "${var.port}"
    subnet_group_name               = "${aws_elasticache_subnet_group.default.name}"
    security_group_ids              = ["${var.security_group_ids}"]

    tags {
    Name  = "${var.name}"
    }
}

resource "aws_elasticache_subnet_group" "default" {
  name        = "subnet-group-${var.name}"
  subnet_ids  = ["${var.subnet_list}"]
}
