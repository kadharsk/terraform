resource "aws_instance" "instance" {
  ami                         = "${var.ami_id}"
  count                       = "${var.number_of_instances}"
  subnet_id                   = "${var.subnet_id}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  vpc_security_group_ids      = ["${var.security_group_ids}"]
  user_data                   = "${var.user_data}"
  ebs_optimized               = "${var.ebs_optimized}"
  disable_api_termination     = "${var.disable_termination}"

  root_block_device {
    volume_type           = "${var.root_volume_type}"
    volume_size           = "${var.root_volume_size}"
    delete_on_termination = "true"
  }

  tags {
    Name  = "${var.name}"
    Env = "Prod"
    Terraform = "True"
  }
}

resource "aws_route53_record" "route53_record" {
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "A"
  ttl     = "30"
  records = ["${aws_instance.instance.private_ip}"]
}
