variable "l_security_group" {
  type = "map"
}

variable "l_sg_ingress_cidr_rule_vars" {
  type = "list"
  default = []
}

variable "l_sg_egress_cidr_rule_vars" {
  type = "list"
  default = []
}

variable "l_sg_ingress_sg_rule_vars" {
  type = "list"
  default = []
}

variable "l_sg_egress_sg_rule_vars" {
  type = "list"
  default = []
}