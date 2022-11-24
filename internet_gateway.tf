# internet gateway
resource "aws_internet_gateway" "threetiergw" {
  vpc_id = aws_vpc.threetier.id

  tags = {
    Name = "threetiergw"
  }
}