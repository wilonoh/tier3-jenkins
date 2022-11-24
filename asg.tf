# AUTO SCALLING WITH LAUNCH TEMPLATE
# asg front end
resource "aws_autoscaling_group" "threetierasg-webtier" {
#   availability_zones = ["eu-west-2a","eu-west-2b"]
  desired_capacity   = 4
  max_size           = 4
  min_size           = 2
  health_check_grace_period = 30
  health_check_type         = "ELB"
  force_delete              = false
  vpc_zone_identifier       = [aws_subnet.pubsub1.id,aws_subnet.pubsub2.id]

  launch_template {
    id      = aws_launch_template.web-tier-LT.id
    version = "$Latest"
  }
}

# asg app tier
resource "aws_autoscaling_group" "threetierasg-internal" {
#   availability_zones = ["eu-west-2a","eu-west-2b"]
  desired_capacity   = 4
  max_size           = 4
  min_size           = 2
  health_check_grace_period = 30
  health_check_type         = "ELB"
  force_delete              = false
  vpc_zone_identifier       = [aws_subnet.privsub1.id,aws_subnet.privsub2.id]

  launch_template {
    id      = aws_launch_template.app-tier-LT.id
    version = "$Latest"
  }
  /* lifestyle {
    ignore_changes = [load_balancers, target_group_arns]
    # instructs Terraform to create the new version before destroying the original to avoid any service interruptions.
  } */
}



/* # AUTO SCALLING WITH LAUNCH CONFIGURATION
# asg frond end
resource "aws_autoscaling_group" "threetierasg" {
  name                      = "threetierasg"
  max_size                  = 5
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 4
  force_delete              = true
  #placement_group           = aws_placement_group.test.id
  launch_configuration      = aws_launch_configuration.webserver-lc.name
  vpc_zone_identifier       = ["${aws_subnet.pubsub1.id}", "${aws_subnet.pubsub2.id}"]
  target_group_arns         = ["${aws_lb_target_group.threetiertgpub.arn}"]


  tag {
    key                 = "lorem"
    value               = "ipsum"
    propagate_at_launch = true
  }
}


# asg internal
resource "aws_autoscaling_group" "threetierasginternal" {
  name                      = "threetierasginternal"
  max_size                  = 5
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 4
  force_delete              = true
  #placement_group           = aws_placement_group.test.id
  launch_configuration      = aws_launch_configuration.internal-lc.name
  vpc_zone_identifier       = ["${aws_subnet.privsub1.id}", "${aws_subnet.privsub2.id}"]
  target_group_arns         = ["${aws_lb_target_group.threetiertginternal.arn}"]


  tag {
    key                 = "lorem"
    value               = "ipsum"
    propagate_at_launch = true
  }
}
 */