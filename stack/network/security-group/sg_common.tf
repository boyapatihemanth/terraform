resource "aws_security_group_rule" "sg_ingress" {
  count = "${length(var.l_sg_ingress_sg_rule_vars)}"
  from_port = "${lookup(var.l_sg_ingress_sg_rule_vars[count.index],"from_port")}"
  protocol = "${lookup(var.l_sg_ingress_sg_rule_vars[count.index],"protocol")}"
  security_group_id = "${aws_security_group.this.id}"
  to_port = "${lookup(var.l_sg_ingress_sg_rule_vars[count.index],"to_port")}"
  type = "ingress"
  source_security_group_id = "${data.aws_security_group.ingress_sg.*.id[count.index]}"
  description = "${lookup(var.l_sg_ingress_sg_rule_vars[count.index],"description")}"
}

resource "aws_security_group_rule" "sg_egress" {
  count = "${length(var.l_sg_egress_sg_rule_vars)}"
  from_port = "${lookup(var.l_sg_egress_sg_rule_vars[count.index],"from_port")}"
  protocol = "${lookup(var.l_sg_egress_sg_rule_vars[count.index],"protocol")}"
  security_group_id = "${aws_security_group.this.id}"
  to_port = "${lookup(var.l_sg_egress_sg_rule_vars[count.index],"to_port")}"
  type = "egress"
  source_security_group_id = "${data.aws_security_group.egress_sg.*.id[count.index]}"
  description = "${lookup(var.l_sg_egress_sg_rule_vars[count.index],"description")}"
}