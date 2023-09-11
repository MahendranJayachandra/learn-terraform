data "aws_ami" "example" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "Centos-8-DevOps-Practice"
    Tested = "true"
  }
}