resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  
  instance_type = "t2.micro"
}

data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "WorkstationImage"
  owners           = ["self"]
}