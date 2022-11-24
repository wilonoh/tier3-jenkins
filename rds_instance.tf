#db instance
resource "aws_db_instance" "threetierdb" {
  allocated_storage    = var.db_instance_allocated_storage
  db_name              = var.db_instance_db_name
  engine               = "mysql"
  engine_version       = var.db_instance_engine_version
  instance_class       = var.db_instance_instance_class
  username             = var.db_instance_username
  password             = var.db_instance_password
#   parameter_group_name = "default.mysql5.7"
  multi_az             = var.db_instance_multi_az
  db_subnet_group_name = aws_db_subnet_group.db-subnet-group.id
  vpc_security_group_ids = [aws_security_group.rds-sg.id]
  publicly_accessible  = var.db_instance_publicly_accessible
  skip_final_snapshot  = var.db_instance_skip_final_snapshot
}

# db subnet group
resource "aws_db_subnet_group" "db-subnet-group" {
  name       = var.db_instance_name
  subnet_ids = [aws_subnet.privsub3.id,aws_subnet.privsub4.id]

  tags = {
    Name = var.db_instance_name
  }
}

resource "aws_security_group" "rds-sg" {
  name        = var.db_instance_sec_group_name
  description = "Allows application tier to access the RDS instance"
  vpc_id      = aws_vpc.threetier.id

  ingress {
    description     = "app tier to MYSQL"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.app_internalsg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.db_instance_egress_cidr_block
  }

  tags = {
    Name = var.db_instance_sec_group_name
  }
}


/* from:resource "aws_db_subnet_group" "db-subnet-group" {
  name       = "db_subnet_group"
  subnet_ids = var.subnets.*.id

  tags = {
    Name = "db_subnet_group"
  }
}

from: resource "aws_security_group" "rds-sg" {
  name        = "RDSSG"
  description = "Allows application tier to access the RDS instance"
  vpc_id      = var.vpc_id

  ingress {
    description     = "EC2 to MYSQL"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = var.from_sgs.*.id
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds_sg"
  }
}

resource "aws_db_instance" "rds" {
  db_subnet_group_name   = aws_db_subnet_group.db-subnet-group.id
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  multi_az               = var.multi_az
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.rds-sg.id]
} */