resource "aws_instance" "example" {
  ami           = "ami-0786924fd8fc9f8d8"
  instance_type = "t2.micro"
}