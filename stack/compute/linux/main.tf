locals {
  timestamp = "${timestamp()}"
  timestamp_sanitized = "${replace("${local.timestamp}", "/[-| |T|Z|:]/", "")}"
}

resource "aws_instance" "this" {
  count                   = "${var.l_instance_details["count"]}"
  instance_type           = "${var.l_instance_details["instance_type"]}"
  ami                     = "${data.aws_ami.this.id}"
  vpc_security_group_ids  = ["${data.aws_security_group.this.id}"]
  subnet_id               = "${data.aws_subnet.public.id}"
  user_data               = "${data.template_file.user_data.rendered}"
  iam_instance_profile    = "${var.l_instance_details["iam_instance_profile"]}"
  root_block_device {
    volume_size           = "${var.l_instance_details["volume_size"]}"
  }
  availability_zone       = "${var.l_instance_details["availability_zone"]}"
  tags {
    Name                  = "${var.l_instance_tags["Name"]}-${count.index}-${local.timestamp_sanitized}"
  }
  lifecycle {
    ignore_changes        = ["tags"]
  }
}
