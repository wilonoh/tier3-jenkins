#APPLICATION LOAD BALANCER
#front end application load balancer
resource "aws_lb" "alb_pub" {
  name               = "alb-pub"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.albsg.id]
  subnets            = [aws_subnet.pubsub1.id,aws_subnet.pubsub2.id]

  enable_deletion_protection = false

    tags = {
    Name = "alb_pub"
  }
}

# listener front end
resource "aws_lb_listener" "web-alb-listener" {
    load_balancer_arn       = aws_lb.alb_pub.arn
    port                    = 80
    protocol                = "HTTP"
    default_action {
        target_group_arn    = aws_lb_target_group.threetiertgpub.arn
        type                = "forward"
    }
}

# target group front end
resource "aws_lb_target_group" "threetiertgpub" {
  health_check {
        enabled             = true
        interval            = 30
        path                = "/"
        protocol            = "HTTP"
        #protocol            = "TCP"
        port                = 80
        timeout             = 6
        healthy_threshold   = 5
        unhealthy_threshold = 2
        matcher             = "200"
        
    }
  name        = "threetiertgpub"
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.threetier.id}"
  }

#alb target group attachment (front end)
resource "aws_autoscaling_attachment" "asg_frontend_attachment" {
    autoscaling_group_name = aws_autoscaling_group.threetierasg-webtier.id
    lb_target_group_arn    = aws_lb_target_group.threetiertgpub.arn
}


# internal application load balancer
resource "aws_lb" "alb_internal" {
  name               = "alb-internal"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [aws_security_group.albsg.id]
  subnets            = [aws_subnet.privsub1.id,aws_subnet.privsub2.id]

  enable_deletion_protection = false

    tags = {
    NAme = "alb_internal"
  }
}

# listener internal
resource "aws_lb_listener" "internal-alb-listener" {
    load_balancer_arn       = aws_lb.alb_internal.arn
    port                    = 80
    protocol                = "HTTP"
    default_action {
        target_group_arn    = aws_lb_target_group.threetiertginternal.arn
        type                = "forward"
    }
}

# target group internal
resource "aws_lb_target_group" "threetiertginternal" {
  health_check {
        enabled             = true
        interval            = 30
        path                = "/"
        protocol            = "HTTP"
        #protocol            = "TCP"
        port                = 80
        timeout             = 6
        healthy_threshold   = 5
        unhealthy_threshold = 2
        matcher             = "200"
        
    }
  name        = "threetiertginternal"
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.threetier.id}"
  }

#alb target group attachment (internal)
resource "aws_autoscaling_attachment" "asg_internal_attachment" {
    autoscaling_group_name = aws_autoscaling_group.threetierasg-internal.id
    lb_target_group_arn    = aws_lb_target_group.threetiertginternal.arn
}












/* # application load balancer Front End
resource "aws_lb" "alb_pub" {
  name               = "alb-pub"
  internal           = false
  ip_address_type = "ipv4"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.albsg.id]
  subnets            = [aws_subnet.pubsub1.id,aws_subnet.pubsub2.id]

  enable_deletion_protection = false



  tags = {
    Name = "alb-pub"
  }
}

# listener front end
resource "aws_lb_listener" "web-alb-listener" {
    load_balancer_arn       = aws_lb.alb_pub.arn
    port                    = 80
    protocol                = "HTTP"
    default_action {
        target_group_arn    = aws_lb_target_group.threetiertgpub.arn
        type                = "forward"
    }
}

# target group front end
resource "aws_lb_target_group" "threetiertgpub" {
  health_check {
        interval            = 70
        path                = "/"
        protocol            = "HTTP"
        #protocol            = "TCP"
        port                = 80
        timeout             = 60
        healthy_threshold   = 5
        unhealthy_threshold = 2
        
    }
  name        = "threetiertgpub"
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.threetier.id}"
}



# application load balancer Internal
resource "aws_lb" "alb_internal" {
  name               = "alb-internal"
  internal           = true
  ip_address_type = "ipv4"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_internalsg.id]
  subnets            = [aws_subnet.privsub1.id,aws_subnet.privsub2.id]

  enable_deletion_protection = false


  tags = {
    Name = "alb_internal"
  }
}

# listener internal
resource "aws_lb_listener" "internal-alb-listener" {
    load_balancer_arn       = aws_lb.alb_internal.arn
    port                    = 80
    protocol                = "HTTP"
    default_action {
        target_group_arn    = aws_lb_target_group.threetiertginternal.arn
        type                = "forward"
    }
}

# target group internal
resource "aws_lb_target_group" "threetiertginternal" {
  health_check {
        interval            = 70
        path                = "/"
        protocol            = "HTTP"
        #protocol            = "TCP"
        port                = 80
        timeout             = 60
        healthy_threshold   = 5
        unhealthy_threshold = 2
        
    }
  name        = "threetiertginternal"
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.threetier.id}"
}
 */

