resource "aws_vpc" "main" {
  cidr_block       = "${var.l_vpc_details["cidr_block"]}"
  instance_tenancy = "${var.l_vpc_details["instance_tenancy"]}"

  tags = {
    Name = "${var.l_vpc_details["name"]}"
    Account = "${var.l_vpc_details["Account"]}"
  }
}