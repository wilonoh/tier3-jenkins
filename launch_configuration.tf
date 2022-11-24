/* # launch configuration
resource "aws_launch_configuration" "webserver-lc" {
  name_prefix   = "webserver-lc"
  image_id      =  "ami-04706e771f950937f"
  instance_type = "t2.micro"
  key_name  =   "3tier"
  security_groups = ["${aws_security_group.webserversg.id}"]
#   user_data       = "${template_file.user_data.rendered}"
  lifecycle {
    create_before_destroy = true
  }
}

# launch configuration Internal
resource "aws_launch_configuration" "internal-lc" {
  name_prefix   = "internal-lc"
  image_id      =  "ami-04706e771f950937f"
  instance_type = "t2.micro"
  key_name  =   "3tier"
  security_groups = ["${aws_security_group.app_internalsg.id}"]

  lifecycle {
    create_before_destroy = true
  }
} */