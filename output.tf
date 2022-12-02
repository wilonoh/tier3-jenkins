# vpc cidr block
output "vpc-cidr-block" {
    description = "vpc cidr block"
    value = aws_vpc.threetier.cidr_block
}

# vpc instance tenancy
output "vpc-instance-tenancy" {
    description = "vpc instance tenancy"
    value = aws_vpc.threetier.instance_tenancy
}

# vpc enable dns hostnames
output "vpc-enable-dns-hostnames" {
    description = "vpc enable dns hostnames"
    value = aws_vpc.threetier.enable_dns_hostnames
}

# vpc enable dns support
output "vpc-enable-dns-support" {
    description = "vpc enable dns hostnames"
    value = aws_vpc.threetier.enable_dns_support
}

# pubsub1 cidr block
output "pubsub1-cidr-block" {
    description = "pubsub1 cidr block"
    value = aws_subnet.pubsub1.cidr_block
}

# pubsub1 map public ip on launch
output "pubsub1-map-public-ip-on-launch" {
    description = "pubsub1 map public ip on launch"
    value = aws_subnet.pubsub1.map_public_ip_on_launch
}


# pubsub2 cidr block
output "pubsub2-cidr-block" {
    description = "pubsub2 cidr block"
    value = aws_subnet.pubsub2.cidr_block
}

# pubsub2 map public ip on launch
output "pubsub2-map-public-ip-on-launch" {
    description = "pubsub2 map public ip on launch"
    value = aws_subnet.pubsub2.map_public_ip_on_launch
}

# pubsub2 availability zone
output "pubsub2-availability-zone" {
    description = "pubsub2 availability zone"
    value = aws_subnet.pubsub2.availability_zone
}

# privsub1 cidr block
output "privsub1-cidr-block" {
    description = "privsub1 cidr block"
    value = aws_subnet.privsub1.cidr_block
}

# privsub1 map public ip on launch
output "privsub1-map-public-ip-on-launch" {
    description = "privsub1 map public ip on launch"
    value = aws_subnet.privsub1.map_public_ip_on_launch
}

# privsub1 availability zone
output "pubsub1-availability-zone" {
    description = "privsub1 availability zone"
    value = aws_subnet.privsub1.availability_zone
}

# privsub2 cidr block
output "privsub2-cidr-block" {
    description = "privsub2 cidr block"
    value = aws_subnet.privsub2.cidr_block
}

# privsub2 map public ip on launch
output "privsub2-map-public-ip-on-launch" {
    description = "privsub2 map public ip on launch"
    value = aws_subnet.privsub2.map_public_ip_on_launch
}

# privsub2 availability zone
output "privsub2-availability-zone" {
    description = "privsub2 availability zone"
    value = aws_subnet.privsub2.availability_zone
}



# privsub3 cidr block
output "privsub3-cidr-block" {
    description = "privsub3 cidr block"
    value = aws_subnet.privsub3.cidr_block
}

# privsub3 map public ip on launch
output "privsub3-map-public-ip-on-launch" {
    description = "privsub3 map public ip on launch"
    value = aws_subnet.privsub3.map_public_ip_on_launch
}

# privsub3 availability zone
output "privsub3-availability-zone" {
    description = "privsub3 availability zone"
    value = aws_subnet.privsub3.availability_zone
}

# privsub4 cidr block
output "privsub4-cidr-block" {
    description = "privsub4 cidr block"
    value = aws_subnet.privsub4.cidr_block
}

# privsub4 map public ip on launch
output "privsub4-map-public-ip-on-launch" {
    description = "privsub4 map public ip on launch"
    value = aws_subnet.privsub4.map_public_ip_on_launch
}

# privsub4 availability zone
output "pubsub4-availability-zone" {
    description = "privsub4 availability zone"
    value = aws_subnet.privsub4.availability_zone
}

# db instance allocated storage"
# db instance allocated storage
output "db-instance-allocated-storage" {
    description = "db instance allocated storage"
    value = aws_db_instance.threetierdb.allocated_storage
}

# db instance db name
output "db-instance-db-name" {
    description = "db instance db name"
    value = aws_db_instance.threetierdb.db_name
}

# db instance instance class
output "db_instance_instance_class" {
    description = "db instance instance class"
    value = aws_db_instance.threetierdb.instance_class
    
}

# db instance username
output "db_instance_username" {
    description = "db instance username"
    value = aws_db_instance.threetierdb.username
    sensitive = true
}

# db instance password
output "db_instance_password" {
    description = "db instance password"
    value = aws_db_instance.threetierdb.password
    sensitive = true
}

/* # db instance multi az 
# variable "db_instance_multi_az" {
    # description = "db instance multi az"
    # value = aws_db_instance.threetierdb.multi_az
}
   */ 
# db instance publicly accessible
output "db_instance_publicly_accessible" {
    description = "db instance publicly accessible"
    value = aws_db_instance.threetierdb.publicly_accessible
}  

# db instance skip final snapshot
output "db_instance_skip_final_snapshot" {
    description = "db instance skip final snapshot"
    value = aws_db_instance.threetierdb.skip_final_snapshot
}  

# db subnet group
# db instance name
output "db_instance_name" {
    description = "db instance name"
    value = aws_db_instance.threetierdb.name
}  

#db security group
# db instance sec group name
output "db_instance_sec_group_name" {
    description = "db instance sec group name"
    value = aws_security_group.rds-sg.name
}  

# db instance egress cidr block
/* output "db_instance_egress_cidr_block" {
    description = "db instance egress cidr block"
    value = aws_security_group.rds-sg.cidr_blocks
}   */

# launch template for web servers
# web servers launch template name prefix
output "web_servers_launch_template_name_prefix" {
    description = "web servers launch template name prefix"
    value = aws_launch_template.web-tier-LT.name_prefix
}  

# web servers launch template image id
output "web_servers_launch_template_image_id" {
    description = "web servers launch template image id"
    value = aws_launch_template.web-tier-LT.image_id
}  

# web servers launch template instance type
output "web_servers_launch_template_instance_type" {
    description = "web servers launch template instance type"
    value = aws_launch_template.web-tier-LT.key_name
}  

# web servers launch template key name
output "web_servers_launch_template_key_name" {
    description = "web servers launch template key name"
    value = aws_launch_template.web-tier-LT.key_name
}  

# web servers launch template associate public ip address
/* output "web_servers_launch_template_associate_public_ip_address" {
    description = "web servers launch template associate public ip address"
    value = aws_launch_template.web-tier-LT.associate_public_ip_address
}  */

#app servers launch template name prefix
output "app_servers_launch_template_name_prefix" {
    description = "app servers launch template name prefix"
    value = aws_launch_template.app-tier-LT.name_prefix
}  

# app servers launch template image id
output "app_servers_launch_template_image_id" {
    description = "app servers launch template image id"
    value = aws_launch_template.app-tier-LT.image_id 
}  

# app servers launch template instance type
output "app_servers_launch_template_instance_type" {
    description = "app servers launch template instance type"
    value = aws_launch_template.app-tier-LT.instance_type
    
}  

# app servers launch template key name
output "app_servers_launch_template_key_name" {
    description = "app servers launch template key name"
    value = aws_launch_template.app-tier-LT.key_name
}  

# app servers launch template associate public ip address
/* output "app_servers_launch_template_associate_public_ip_address" {
    description = "app servers launch template associate public ip address"
    value = aws_launch_template.app-tier-LT.associate_public_ip_address
}  */

# route table
# public route table
# public route table cidr block
/* output "public_route_table_cidr_block" {
    description = "public route table cidr block"
    value = aws_route_table.threetierpubroute.cidr_block
}   */

# public route table name
/* output "public_route_table_name" {
    description = "public route table name"
    value = aws_route_table.threetierpubroute.name
}   */

#private route table
# private route table1 cidr block
/* output "private_route_table1_cidr_block" {
    description = "private route table1 cidr block"
    value = aws_route_table.threetierprivroute1.cidr_block
}   */

# private route table1 name
/* output "private_route_table1_name" {
    description = "private route table1 name"
    value = aws_route_table.threetierprivroute1.name
}   */

# private route table2 cidr block
/* output "private_route_table2_cidr_block" {
    description = "private route table2 cidr block"
    value = aws_route_table.threetierprivroute2.cidr_block
}   */

# private route table2 name
/* output "private_route_table2_name" {
    description = "private route table2 name"
    value = aws_route_table.threetierprivroute2.name
}   */

# private route table3 cidr block
/* output "private_route_table3_cidr_block" {
    description = "private route table3 cidr block"
    value = aws_route_table.threetierprivroute3.cidr_block

}   */

# private route table3 name
/* output "private_route_table3_name" {
    description = "private route table3 name"
    value = aws_route_table.threetierprivroute3.name
}  */ 

# private route table4 cidr block
/* output "private_route_table4_cidr_block" {
    description = "private route table4 cidr block"
    value = aws_route_table.threetierprivroute4.cidr_block
}   */

# private route table4 name
/* output "private_route_table4_name" {
    description = "private route table4 name"
    value = aws_route_table.threetierprivroute4.name
} */  

# nat gateway1 name
/* output "nat_gateway1_name" {
    description = "nat gateway1 name"
    value = aws_nat_gateway.threetiernat_ngw1.name
}   */

# nat gateway2 name
/* output "nat_gateway2_name" {
    description = "nat gateway2 name"
    value = aws_nat_gateway.threetiernat_ngw2.name
}   */

#security groups
/* variable "web_tier_sec_group_name" {
    description = "making web_tier_sec_group_name a variable"
    default = "albsg"
    type    = string
}  */ 

# web tier alb sec group name
output "web_tier_alb_sec_group_name" {
    description = "web tier alb sec group name"
    value = aws_security_group.albsg.name
}  

# web tier alb ingress cidr blocks
/* output "web_tier_alb_ingress_cidr_blocks" {
    description = "web tier alb ingress cidr blocks"
    value = aws_security_group.albsg.cidr_block

}   */

# web tier alb egress cidr blocks
/* output "web_tier_alb_egress_cidr_blocks" {
    description = "web tier alb egress cidr blocks"
    value = aws_security_group.albsg.cidr_block
}   */

#web server security group
# web server security group name
output "web_server_security_group_name" {
    description = "web server security group name"
    value = aws_security_group.webserversg.name
}  

# web server security group ingress cidr blocks
/* output "web_server_security_group_ingress_cidr_blocks" {
    description = "web server security group ingress cidr blocks"
    value = aws_security_group.webserversg.cidr_block
}   */

# web server security group egress cidr block
/* output "web_server_security_group_egress_cidr_block" {
    description = "web server security group egress cidr block"
    value = aws_security_group.webserversg.cidr_block
}   */

# alb security group internal name
output "alb_security_group_internal_name" {
    description = "alb security group internal name"
    value = aws_security_group.alb_internalsg.name
} 

# alb security group internal ingress cidr blocks
/* output "alb_security_group_internal_ingress_cidr_blocks" {
    description = "alb security group internal ingress cidr blocks"
    value = aws_security_group.alb_internalsg.cidr_block
}   */

# alb security group internal egress cidr block
/* output "alb_security_group_internal_egress_cidr_block" {
    description = "alb security group internal egress cidr block"
    value = aws_security_group.alb_internalsg.cidr_block
} */  


# Application security group internal
output "application_security_group_internal_name" {
    description = "Application security group internal"
    value = aws_security_group.app_internalsg.name
} 

# app server security group ingress cidr blocks
/* output "app_server_security_group_ingress_cidr_blocks" {
    description = "app server security group ingress cidr blocks"
    value = aws_security_group.app_internalsg.cidr_blocks
}   */

# app server security group egress cidr blocks
/* output "app_server_security_group_egress_cidr_blocks" {
    description = "app server security group egress cidr blocks"
    value = aws_security_group.app_internalsg.cidr_blocks
}   */
