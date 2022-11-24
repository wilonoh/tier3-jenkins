# public subnet
resource "aws_subnet" "pubsub1" {
  vpc_id     = aws_vpc.threetier.id
  cidr_block = var.pubsub1_cidr_block
  map_public_ip_on_launch = var.pubsub1_map_public_ip_on_launch
  availability_zone = var.pubsub1_availability_zone

  tags = {
    Name = var.pubsub1_Name
  }
}

resource "aws_subnet" "pubsub2" {
  vpc_id     = aws_vpc.threetier.id
  cidr_block = var.pubsub2_cidr_block
  map_public_ip_on_launch = var.pubsub2_map_public_ip_on_launch
  availability_zone = var.pubsub2_availability_zone

  tags = {
    Name = var.pubsub2_Name
  }
}

# application subnet
resource "aws_subnet" "privsub1" {
  vpc_id     = aws_vpc.threetier.id
  cidr_block = var.privsub1_cidr_block
  map_public_ip_on_launch = var.privsub1_map_public_ip_on_launch
  availability_zone = var.privsub1_availability_zone

  tags = {
    Name = var.privsub1_Name
  }
}

resource "aws_subnet" "privsub2" {
  vpc_id     = aws_vpc.threetier.id
  cidr_block = var.privsub2_cidr_block
  map_public_ip_on_launch = var.privsub2_map_public_ip_on_launch
  availability_zone = var.privsub2_availability_zone

  tags = {
    Name = var.privsub2_Name
  }
}

# database subnet
resource "aws_subnet" "privsub3" {
  vpc_id     = aws_vpc.threetier.id
  cidr_block = var.privsub3_cidr_block
  map_public_ip_on_launch = var.privsub3_map_public_ip_on_launch
  availability_zone = var.privsub3_availability_zone

  tags = {
    Name = var.privsub3_Name
  }
}
# database subnet
resource "aws_subnet" "privsub4" {
  vpc_id     = aws_vpc.threetier.id
  cidr_block = var.privsub4_cidr_block
  map_public_ip_on_launch = var.privsub4_map_public_ip_on_launch
  availability_zone = var.privsub4_availability_zone

  tags = {
    Name = var.privsub4_Name
  }
}