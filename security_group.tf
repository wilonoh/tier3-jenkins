# web tier alb security group
resource "aws_security_group" "albsg" {
  name        = var.web_tier_alb_sec_group_name
  description = "Allow http & ssl inbound traffic"
  vpc_id      = aws_vpc.threetier.id

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks       = var.web_tier_alb_ingress_cidr_blocks
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
  
   ingress {
    description      = "http from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = var.web_tier_alb_ingress_cidr_blocks
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.web_tier_alb_egress_cidr_blocks
   # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.web_tier_alb_sec_group_name
  }
}

# web server security group
resource "aws_security_group" "webserversg" {
  name        = var.web_server_security_group_name
  description = "Allow http & ssl inbound traffic"
  vpc_id      = aws_vpc.threetier.id

  ingress {
    description      = "http from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks       = var.web_server_security_group_ingress_cidr_blocks
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    security_groups = [aws_security_group.albsg.id]
  }
   ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks       = var.web_server_security_group_ingress_cidr_blocks
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    security_groups = [aws_security_group.albsg.id]
  }
   ingress {
    description      = "http from VPC"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = var.web_server_security_group_ingress_cidr_blocks
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
     security_groups = [aws_security_group.albsg.id]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.web_server_security_group_egress_cidr_block
   # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.web_server_security_group_name
  }
}

# alb security group internal
resource "aws_security_group" "alb_internalsg" {
  name        = var.alb_security_group_internal_name
  description = "Allow http & ssl inbound traffic"
  vpc_id      = aws_vpc.threetier.id

  ingress {
    description      = "http from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks       = var.alb_security_group_internal_ingress_cidr_blocks
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    security_groups = [aws_security_group.webserversg.id]
  }
  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks       = var.alb_security_group_internal_ingress_cidr_blocks
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    security_groups = [aws_security_group.webserversg.id]
  }
   ingress {
    description      = "http from VPC"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    security_groups = [aws_security_group.webserversg.id]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.alb_security_group_internal_egress_cidr_block
   # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.alb_security_group_internal_name
  }
}

# Application security group internal
resource "aws_security_group" "app_internalsg" {
  name        = var.application_security_group_internal_name
  description = "Allow http & ssl inbound traffic"
  vpc_id      = aws_vpc.threetier.id

  ingress {
    description      = "http from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks       = var.app_server_security_group_ingress_cidr_blocks
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    security_groups = [aws_security_group.alb_internalsg.id]
  }
  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks       = var.app_server_security_group_ingress_cidr_blocks
    # cidr_blocks      = [aws_vpc.main.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    security_groups = [aws_security_group.alb_internalsg.id]
  }
   ingress {
    description      = "http from VPC"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = var.app_server_security_group_ingress_cidr_blocks
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    security_groups = [aws_security_group.alb_internalsg.id]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.app_server_security_group_egress_cidr_blocks
   # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.application_security_group_internal_name
  }
}

