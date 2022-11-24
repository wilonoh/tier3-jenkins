# launch template for web servers
resource "aws_launch_template" "web-tier-LT" {
    name_prefix         = var.web_servers_launch_template_name_prefix
    image_id            = var.web_servers_launch_template_image_id
    instance_type       = var.web_servers_launch_template_instance_type
    key_name            = var.web_servers_launch_template_key_name
    # security_group_names= ["${aws_security_group.webserversg.id}"]
    user_data           = filebase64("${"install_apache.sh"}")     

    network_interfaces  {
        associate_public_ip_address = var.web_servers_launch_template_associate_public_ip_address
        security_groups = ["${aws_security_group.webserversg.id}"]
    }
    tags = {
        Name = "web-tier-LT"
    }
}


#launch template for application servers
resource "aws_launch_template" "app-tier-LT" {
    name_prefix         = var.app_servers_launch_template_name_prefix
    image_id            = var.app_servers_launch_template_image_id
    instance_type       = var.app_servers_launch_template_instance_type
    key_name            = var.app_servers_launch_template_key_name
    #security_group_names= ["Webtier-sg"]
    # user_data           = filebase64("${"install_apache.sh"}")     

    network_interfaces  {
        associate_public_ip_address = var.app_servers_launch_template_associate_public_ip_address
        security_groups = ["${aws_security_group.app_internalsg.id}"]
    }
    tags = {
        Name = "app-tier-LT"
    }
}


/* #Security groups
#configuring web tier security group (public ec2 instances)
resource "aws_security_group" "webtier-sg"
name                = 
description         =allow inbound http, ssh and web-elb-sg
vpc_id              = aws_vpc.project-vpc.id
 */
/* # inbound rules
ingress {
    from_port       = 80
    to_port         = "tcp"
    security_groups = [aws_security_group.web-elb-sg.id]
}

ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_block      = ["0.0.0.0/0"]
}

egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0./0"]
    #security_groups = [aws_security_group.web-elb-sg.id]
} */