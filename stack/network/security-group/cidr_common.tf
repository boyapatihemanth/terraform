resource "aws_security_group_rule" "cidr_ingress" {
  count = "${length(var.l_sg_ingress_cidr_rule_vars)}"
  from_port = "${lookup(var.l_sg_ingress_cidr_rule_vars[count.index],"from_port")}"
  protocol = "${lookup(var.l_sg_ingress_cidr_rule_vars[count.index],"protocol")}"
  security_group_id = "${aws_security_group.this.id}"
  to_port = "${lookup(var.l_sg_ingress_cidr_rule_vars[count.index],"to_port")}"
  type = "ingress"
  cidr_blocks = "${split(",","${lookup(var.l_sg_ingress_cidr_rule_vars[count.index],"cidr_blocks")}")}"
  description = "${lookup(var.l_sg_ingress_cidr_rule_vars[count.index],"description")}"
}

resource "aws_security_group_rule" "cidr_egress" {
  count = "${length(var.l_sg_egress_cidr_rule_vars)}"
  from_port = "${lookup(var.l_sg_egress_cidr_rule_vars[count.index],"from_port")}"
  protocol = "${lookup(var.l_sg_egress_cidr_rule_vars[count.index],"protocol")}"
  security_group_id = "${aws_security_group.this.id}"
  to_port = "${lookup(var.l_sg_egress_cidr_rule_vars[count.index],"to_port")}"
  type = "egress"
  cidr_blocks = "${split(",","${lookup(var.l_sg_egress_cidr_rule_vars[count.index],"cidr_blocks")}")}"
  description = "${lookup(var.l_sg_egress_cidr_rule_vars[count.index],"description")}"
}