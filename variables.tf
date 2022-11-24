#load balancer arn
/* variable "load_balancer_arn" {
    description = "making load_balancer_arn a variable"
    default = true
    type    = bool
} */

# vpc cidr block
variable "vpc_cidr_block" {
    description = "making vpc_cidr_block a variable"
    default = "172.16.0.0/16"
    type    = string
}

variable "instance_tenancy" {
    description = "making instance_tenancy a variable"
    default = "default"
    type    = string
}
variable "enable_dns_hostnames" {
    description = "making enable_dns_hostnames a variable"
    default = true
    type    = bool
}

variable "enable_dns_support" {
    description = "making enable_dns_support a variable"
    default = true
    type    = bool
}

variable "threetier_vpc_name" {
    description = "making threetier_vpc_name a variable"
    default = "threetier"
    type    = string
}

variable "pubsub1_cidr_block" {
    description = "making pubsub1_cidr_block a variable"
    default = "172.16.2.0/24"
    type    = string
}

variable "pubsub1_map_public_ip_on_launch" {
    description = "making pubsub1_map_public_ip_on_launch a variable"
    default = true
    type    = bool
}

variable "pubsub1_availability_zone" {
    description = "making pubsub1_availability_zone a variable"
    default = "eu-west-2a"
    type    = string
}

variable "pubsub1_Name" {
    description = "making pubsub1_Name a variable"
    default = "pubsub1"
    type    = string
}

variable "pubsub2_cidr_block" {
    description = "making pubsub2_cidr_block a variable"
    default = "172.16.3.0/24"
    type    = string
}

variable "pubsub2_map_public_ip_on_launch" {
    description = "making pubsub2_map_public_ip_on_launch a variable"
    default = true
    type    = bool
}

variable "pubsub2_availability_zone" {
    description = "making pubsub2_availability_zone a variable"
    default = "eu-west-2b"
    type    = string
}

variable "pubsub2_Name" {
    description = "making pubsub2_Name a variable"
    default = "pubsub2"
    type    = string
}

#application subnets
variable "privsub1_cidr_block" {
    description = "making privsub1_cidr_block a variable"
    default = "172.16.4.0/24"
    type    = string
}

variable "privsub1_map_public_ip_on_launch" {
    description = "making privsub1_map_public_ip_on_launch a variable"
    default = false
    type    = bool
}

variable "privsub1_availability_zone" {
    description = "making privsub1_availability_zone a variable"
    default = "eu-west-2a"
    type    = string
}

variable "privsub1_Name" {
    description = "making privsub1_Name a variable"
    default = "privsub1"
    type    = string
}

variable "privsub2_cidr_block" {
    description = "making privsub2_cidr_block a variable"
    default = "172.16.5.0/24"
    type    = string
}

variable "privsub2_map_public_ip_on_launch" {
    description = "making privsub2_map_public_ip_on_launch a variable"
    default = false
    type    = bool
}

variable "privsub2_availability_zone" {
    description = "making privsub2_availability_zone a variable"
    default = "eu-west-2b"
    type    = string
}

variable "privsub2_Name" {
    description = "making privsub2_Name a variable"
    default = "privsub2"
    type    = string
}

# database subnet
variable "privsub3_cidr_block" {
    description = "making privsub3_cidr_block a variable"
    default = "172.16.6.0/24"
    type    = string
}

variable "privsub3_map_public_ip_on_launch" {
    description = "making privsub3_map_public_ip_on_launch a variable"
    default = false
    type    = bool
}

variable "privsub3_availability_zone" {
    description = "making privsub3_availability_zone a variable"
    default = "eu-west-2a"
    type    = string
}

variable "privsub3_Name" {
    description = "making privsub3_Name a variable"
    default = "privsub3"
    type    = string
}

variable "privsub4_cidr_block" {
    description = "making privsub4_cidr_block a variable"
    default = "172.16.7.0/24"
    type    = string
}

variable "privsub4_map_public_ip_on_launch" {
    description = "making privsub4_map_public_ip_on_launch a variable"
    default = false
    type    = bool
}

variable "privsub4_availability_zone" {
    description = "making privsub4_availability_zone a variable"
    default = "eu-west-2b"
    type    = string
}

variable "privsub4_Name" {
    description = "making privsub4_Name a variable"
    default = "privsub4"
    type    = string
}

#db instance
variable "db_instance_allocated_storage" {
    description = "making db_instance_allocated_storage a variable"
    default = 10
    type    = number
}

variable "db_instance_db_name" {
    description = "making db_instance_db_name a variable"
    default = "threetierdb"
    type    = string
}

/* variable "db_instance_engine" {
    description = "making db_instance_engine a variable"
    default = "mysql"
    type    = string
} */

variable "db_instance_engine_version" {
    description = "making db_instance_engine_version a variable"
    default = "8.0.28"
    type    = string
}

variable "db_instance_instance_class" {
    description = "making db_instance_instance_class a variable"
    default = "db.t2.micro"
    type    = string
}

variable "db_instance_username" {
    description = "making db_instance_username a variable"
    default = "admin"
    sensitive = true
    type    = string
}

variable "db_instance_password" {
    description = "making db_instance_password a variable"
    default = "4Getmen0t"
    sensitive = true
    type    = string
}
   
variable "db_instance_multi_az" {
    description = "making db_instance_multi_az a variable"
    default = true
    type    = bool
}
   
variable "db_instance_publicly_accessible" {
    description = "making db_instance_publicly_accessible a variable"
    default = false
    type    = bool
}  

variable "db_instance_skip_final_snapshot" {
    description = "making db_instance_skip_final_snapshot a variable"
    default = true
    type    = bool
}  

# db subnet group
variable "db_instance_name" {
    description = "making db_instance_name a variable"
    default = "db-subnet-group"
    type    = string
}  

#db security group
variable "db_instance_sec_group_name" {
    description = "making db_instance_sec_group_name a variable"
    default = "rds-sg"
    type    = string
}  

variable "db_instance_egress_cidr_block" {
    description = "making db_instance_egress_cidr_block a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  

# launch template for web servers
variable "web_servers_launch_template_name_prefix" {
    description = "making web_servers_launch_template_name_prefix a variable"
    default = "web-tier-LT"
    type    = string
}  

variable "web_servers_launch_template_image_id" {
    description = "making web_servers_launch_template_image_id a variable"
    default = "ami-04706e771f950937f"
    type    = string
}  

variable "web_servers_launch_template_instance_type" {
    description = "making web_servers_launch_template_instance_type a variable"
    default = "t2.micro"
    type    = string
}  

variable "web_servers_launch_template_key_name" {
    description = "making web_servers_launch_template_key_name a variable"
    default = "3tier"
    type    = string
}  

variable "web_servers_launch_template_associate_public_ip_address" {
    description = "making web_servers_launch_template_associate_public_ip_address a variable"
    default = true
    type    = bool
} 

#launch template for application servers
variable "app_servers_launch_template_name_prefix" {
    description = "making app_servers_launch_template_name_prefix a variable"
    default = "app-tier-LT"
    type    = string
}  

variable "app_servers_launch_template_image_id" {
    description = "making app_servers_launch_template_image_id a variable"
    default = "ami-04706e771f950937f"
    type    = string
}  

variable "app_servers_launch_template_instance_type" {
    description = "making app_servers_launch_template_instance_type a variable"
    default = "t2.micro"
    type    = string
}  

variable "app_servers_launch_template_key_name" {
    description = "making app_servers_launch_template_key_name a variable"
    default = "3tier"
    type    = string
}  

variable "app_servers_launch_template_associate_public_ip_address" {
    description = "making app_servers_launch_template_associate_public_ip_address a variable"
    default = false
    type    = bool
} 

# route table
# public route table
variable "public_route_table_cidr_block" {
    description = "making public_route_table_cidr_block a variable"
    default = "0.0.0.0/0"
    type    = string
}  

variable "public_route_table_name" {
    description = "making public_route_table_name a variable"
    default = "threetierpub"
    type    = string
}  

#private route table
variable "private_route_table1_cidr_block" {
    description = "making private_route_table1_cidr_block a variable"
    default = "0.0.0.0/0"
    type    = string
}  

variable "private_route_table1_name" {
    description = "making private_route_table1_name a variable"
    default = "threetierpriv1"
    type    = string
}  

variable "private_route_table2_cidr_block" {
    description = "making private_route_table2_cidr_block a variable"
    default = "0.0.0.0/0"
    type    = string
}  

variable "private_route_table2_name" {
    description = "making private_route_table2_name a variable"
    default = "threetierpriv2"
    type    = string
}  

variable "private_route_table3_cidr_block" {
    description = "making private_route_table3_cidr_block a variable"
    default = "0.0.0.0/0"
    type    = string
}  

variable "private_route_table3_name" {
    description = "making private_route_table3_name a variable"
    default = "threetierpriv3"
    type    = string
}  

variable "private_route_table4_cidr_block" {
    description = "making private_route_table4_cidr_block a variable"
    default = "0.0.0.0/0"
    type    = string
}  

variable "private_route_table4_name" {
    description = "making private_route_table4_name a variable"
    default = "threetierpriv4"
    type    = string
}  

# nat gateway
variable "nat_gateway1_name" {
    description = "making nat_gateway1_name a variable"
    default = "threetiernat1"
    type    = string
}  

variable "nat_gateway2_name" {
    description = "making nat_gateway2_name a variable"
    default = "threetiernat1"
    type    = string
}  

#security groups
/* variable "web_tier_sec_group_name" {
    description = "making web_tier_sec_group_name a variable"
    default = "albsg"
    type    = string
}  */ 

variable "web_tier_alb_sec_group_name" {
    description = "making web_tier_alb_sec_group_name a variable"
    default = "albsg"
    type    = string
}  

variable "web_tier_alb_ingress_cidr_blocks" {
    description = "making web_tier_alb_ingress_cidr_blocks a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  

variable "web_tier_alb_egress_cidr_blocks" {
    description = "making web_tier_alb_egress_cidr_blocks a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  

#web server security group
variable "web_server_security_group_name" {
    description = "making web_server_security_group_name a variable"
    default = "webserversg"
    type    = string
}  

variable "web_server_security_group_ingress_cidr_blocks" {
    description = "making web_server_security_group_ingress_cidr_blocks a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  

variable "web_server_security_group_egress_cidr_block" {
    description = "making web_server_security_group_egress_cidr_blocks a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  

# alb security group internal
variable "alb_security_group_internal_name" {
    description = "making alb_security_group_internal_name a variable"
    default = "alb_internalsg"
    type    = string
} 

variable "alb_security_group_internal_ingress_cidr_blocks" {
    description = "making alb_security_group_internal_ingress_cidr_blocks a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  

variable "alb_security_group_internal_egress_cidr_block" {
    description = "making alb_security_group_internal_egress_cidr_blocks a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  


# Application security group internal
variable "application_security_group_internal_name" {
    description = "making application_security_group_internal_name a variable"
    default = "app_internalsg"
    type    = string
} 

variable "app_server_security_group_ingress_cidr_blocks" {
    description = "making application_security_group_internal_ingress_cidr_blocks a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  

variable "app_server_security_group_egress_cidr_blocks" {
    description = "making application_security_group_internal_egress_cidr_blocks a variable"
    default = ["0.0.0.0/0"]
    type    = list
}  


