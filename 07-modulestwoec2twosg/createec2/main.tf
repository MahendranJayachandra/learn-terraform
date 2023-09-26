resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  security_groups = [aws_security_group.sg.name]
  tags = {
    Name = var.name
  }
}

variable "name" {}

data "aws_ami" "example" {
 # executable_users = ["self"]
  most_recent      = true
  name_regex       = "DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_security_group" "sg" {
  name        = var.name
  description = "Allow TLS inbound traffic"
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.name
  }
}