data "aws_ami" "this" {
  most_recent = true
  filter {
    name = "tag:Name"
    values = ["rhel-7-encrypted"]
  }
  filter {
    name = "tag:Usable"
    values = ["yes"]
  }
}

data "aws_security_group" "this" {
  name = "all-in-all-out"
  vpc_id = "${var.l_instance_details["vpc_id"]}"
}

data "template_file" "user_data" {
  template = "${file("${path.root}/userdata/${var.r_userdata}.tpl")}"
}

data "aws_subnet" "public" {
  filter {
    name = "tag:Name"
    values = ["public-1"]
  }
}