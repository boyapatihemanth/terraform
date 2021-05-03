resource "aws_security_group" "this" {
  name = "${var.l_security_group["name"]}"
  description = "${var.l_security_group["description"]}"
  vpc_id = "${data.aws_vpc.default.id}"
  tags {
    Name = "${var.l_security_group["name"]}"
  }
}