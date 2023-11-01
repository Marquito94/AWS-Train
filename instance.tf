resource "aws_instance" "ec2" {
  ami           = "ami-08cba41c585e4a2e2"
  instance_type = "t3.micro"

  security_groups = [aws_security_group.secgroup.name]

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "secgroup" {
	name = "terraform-tcp-security-group"
	
	ingress {
		from_port = 2
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
  }
}