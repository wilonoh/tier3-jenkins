# elastic ip1
resource "aws_eip" "threetiereip_ngw1" {
#   instance = aws_instance.web.id
  vpc      = true
}

# elastic ip2
resource "aws_eip" "threetiereip_ngw2" {
#   instance = aws_instance.web.id
  vpc      = true
}


# nat gateway1
resource "aws_nat_gateway" "threetiernat_ngw1" {
  allocation_id = aws_eip.threetiereip_ngw1.id
  subnet_id     = aws_subnet.pubsub1.id

  tags = {
    Name = var.nat_gateway1_name
  }

}
# nat gateway2
resource "aws_nat_gateway" "threetiernat_ngw2" {
  allocation_id = aws_eip.threetiereip_ngw2.id
  subnet_id     = aws_subnet.pubsub2.id

  tags = {
    Name = var.nat_gateway2_name
  }
}




  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.example]


/* # nat gateway2
resource "aws_nat_gateway" "threetiernat1" {
  allocation_id = aws_eip.threetiereip1.id
  subnet_id     = aws_subnet.pubsub2.id

  tags = {
    Name = "threetiernat1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.example]
} */