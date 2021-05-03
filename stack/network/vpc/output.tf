output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "vpc_arn" {
  value = "${aws_vpc.main.arn}"
}

output "default_routetable_id" {
  value = "${aws_vpc.main.default_route_table_id}"
}

output "default_nacl_id" {
  value = "${aws_vpc.main.default_network_acl_id}"
}

output "default_sg_id" {
  value = "${aws_vpc.main.default_security_group_id}"
}

output "default_dhcp_option_set" {
  value = "${aws_vpc.main.dhcp_options_id}"
}