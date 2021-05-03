resource "aws_subnet" "this" {
  count = "${var.l_subnet_count}"
  cidr_block = "${element(var.l_subnet_details["cidr_block"], count.index)}"
  vpc_id = "${data.aws_vpc.this.id}"
  availability_zone = "${element(var.l_subnet_details["availability_zone"], (count.index%3))}"
  tags {
    Name = "${element(var.l_subnet_details["Name"], (count.index/3))}-${(count.index%3)+1}"
  }
}


