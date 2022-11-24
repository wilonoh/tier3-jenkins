# route table
# public route table
resource "aws_route_table" "threetierpubroute" {
  vpc_id = aws_vpc.threetier.id

  route {
    cidr_block = var.public_route_table_cidr_block
    gateway_id = aws_internet_gateway.threetiergw.id
  }

  tags = {
    Name = var.public_route_table_name
  }
}

# private route table1
resource "aws_route_table" "threetierprivroute1" {
  vpc_id = aws_vpc.threetier.id

  route {
    cidr_block = var.private_route_table1_cidr_block
    nat_gateway_id = aws_nat_gateway.threetiernat_ngw1.id
    # gateway_id = aws_internet_gateway.threetiergw.id
  }

  tags = {
    #Project = "threetier"
    Name = var.private_route_table1_name
  }
}

# private route table2
resource "aws_route_table" "threetierprivroute2" {
  vpc_id = aws_vpc.threetier.id

  route {
    cidr_block = var.private_route_table2_cidr_block
    nat_gateway_id = aws_nat_gateway.threetiernat_ngw2.id
    # gateway_id = aws_internet_gateway.threetiergw.id
  }
  tags = {
    #Project = "threetier"
    Name = var.private_route_table2_name
  }
}

# private route table3
resource "aws_route_table" "threetierprivroute3" {
  vpc_id = aws_vpc.threetier.id

  route {
    cidr_block = var.private_route_table3_cidr_block
    nat_gateway_id = aws_nat_gateway.threetiernat_ngw1.id
    # gateway_id = aws_internet_gateway.threetiergw.id
  }
  tags = {
    #Project = "threetier"
    Name = var.private_route_table3_name
  }
}

# private route table4
resource "aws_route_table" "threetierprivroute4" {
  vpc_id = aws_vpc.threetier.id

  route {
    cidr_block = var.private_route_table4_cidr_block
    nat_gateway_id = aws_nat_gateway.threetiernat_ngw2.id
    # gateway_id = aws_internet_gateway.threetiergw.id
  }
  tags = {
    #Project = "threetier"
    Name = var.private_route_table3_name
  }
}


 