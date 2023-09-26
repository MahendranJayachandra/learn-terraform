resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  security_groups = [aws_security_group.sg.id]
  tags = {
    Name = "HelloWorld"
  }
}

data "aws_ami" "example" {
 # executable_users = ["self"]
  most_recent      = true
  name_regex       = "DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_security_group" "sg" {
  name        = "sample sg"
  description = "Allow TLS inbound traffic"
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "sample sg"
    from_port        = 80
    to_port          = 80
    protocol         = "ssh"
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
    Name = "sample"
  }
}