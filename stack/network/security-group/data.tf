data "aws_vpc" "default" {
  default = true
}

data "aws_security_group" "ingress_sg" {
  count = "${length(var.l_sg_ingress_sg_rule_vars)}"
  filter {
    name = "tag:Name"
    values = ["${lookup(var.l_sg_ingress_sg_rule_vars[count.index], "sg_name")}"]
  }
}

data "aws_security_group" "egress_sg" {
  count = "${length(var.l_sg_egress_sg_rule_vars)}"
  filter {
    name = "tag:Name"
    values = ["${lookup(var.l_sg_egress_sg_rule_vars[count.index], "sg_name")}"]
  }
}