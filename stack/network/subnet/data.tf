data "aws_vpc" "this" {
  filter {
    name = "tag:Name"
    values = ["${var.l_vpc_details["name"]}"]
  }
}