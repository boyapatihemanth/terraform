l_security_group = {
  name = "My-SG"
  description = "Built from Terraform"
}

l_sg_ingress_cidr_rule_vars = [
  {
    from_port = "3389"
    to_port = "3389"
    protocol = "tcp"
    cidr_blocks = "10.0.0.0/8,172.0.0.0/8" #Dummy Values
    description = "RDP Connection"
  },
  {
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = "10.0.0.0/8,172.0.0.0/8" #Dummy Values
    description = "SSH Connection"
  },
  {
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = "172.0.0.0/8" #Dummy Values
    description = "HTTP Connection"
  },
  {
    from_port = "443"
    to_port = "443"
    protocol = "tcp"
    cidr_blocks = "172.0.0.0/8" #Dummy Values
    description = "HTTPS Connection"
  }
]


l_sg_egress_cidr_rule_vars = [
  {
    from_port = "5432"
    to_port = "5432"
    protocol = "tcp"
    cidr_blocks = "10.0.0.0/8" #Dummy Values
    description = "Postgres Connection"
  }
]

l_sg_egress_sg_rule_vars = [
  {
    from_port = "0"
    to_port = "65535"
    protocol = "tcp"
    sg_name = "default" #Dummy Values
    description = "All traffic to SG by the name default"
  }
]