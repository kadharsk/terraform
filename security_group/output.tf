output "id" {
  description = "ID of the created security group"
  value = "${aws_security_group.odmont.*.id}"
}
