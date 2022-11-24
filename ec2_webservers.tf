/* # web ec2
resource "aws_instance" "webec2" {
  ami           = "ami-04706e771f950937f"
  instance_type = "t2.micro"
  key_name      = "3tier"
  count         = 2
  # associate_public_ip_address = true
  subnet_id     = aws_subnet.pubsub1.id
  security_groups = ["${aws_security_group.webserversg.id}"]

  tags = {
    Name = "webec2.${count.index}"

  }
}
 */


