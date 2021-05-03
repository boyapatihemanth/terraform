output "subnet_id_list" {
  value = "${aws_subnet.this.*.id}"
}

output "subnet_arn_list" {
  value = "${aws_subnet.this.*.arn}"
}