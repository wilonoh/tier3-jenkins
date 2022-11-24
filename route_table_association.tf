# public route table association
resource "aws_route_table_association" "threetierpubasso1" {
  subnet_id      = aws_subnet.pubsub1.id
  route_table_id = aws_route_table.threetierpubroute.id
}
resource "aws_route_table_association" "threetierpubasso2" {
  subnet_id      = aws_subnet.pubsub2.id
  route_table_id = aws_route_table.threetierpubroute.id
}

# private route table association
resource "aws_route_table_association" "threetierprivasso1" {
  subnet_id      = aws_subnet.privsub1.id
  route_table_id = aws_route_table.threetierprivroute1.id
}
resource "aws_route_table_association" "threetierprivasso2" {
  subnet_id      = aws_subnet.privsub2.id
  route_table_id = aws_route_table.threetierprivroute2.id
}

resource "aws_route_table_association" "threetierprivasso3" {
  subnet_id      = aws_subnet.privsub3.id
  route_table_id = aws_route_table.threetierprivroute3.id
}
resource "aws_route_table_association" "threetierprivasso4" {
  subnet_id      = aws_subnet.privsub4.id
  route_table_id = aws_route_table.threetierprivroute4.id
}