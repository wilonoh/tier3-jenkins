/* # target group public
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
  port        = 3000
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.threetier.id}"
}

# target group internal
resource "aws_lb_target_group" "threetiertginternal" {
  health_check {
        # interval            = 70
        # path                = "/"
        # protocol            = "HTTP"
        #protocol            = "TCP"
        # port                = 80
        timeout             = 60
        healthy_threshold   = 5
        unhealthy_threshold = 2
        
    }
  name        = "threetiertginternal"
  target_type = "instance"
  port        = 3000
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.threetier.id}"
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
  name        = "threetiertgpub"
  target_type = "instance"
  port        = 3000
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.threetier.id}"
}

# target group internal
resource "aws_lb_target_group" "threetiertginternal" {
  health_check {
        # interval            = 70
        # path                = "/"
        # protocol            = "HTTP"
        #protocol            = "TCP"
        # port                = 80
        timeout             = 60
        healthy_threshold   = 5
        unhealthy_threshold = 2
        
    }
  name        = "threetiertginternal"
  target_type = "instance"
  port        = 3000
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.threetier.id}"
}






 */


