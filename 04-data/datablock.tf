data "aws_ami" "example" {
  #executable_users = "322657627157" # the program fetching zero results when I gave my account id as executable_users
  most_recent      = true
  name_regex       = "WorkstationImage"
  owners           = ["322657627157"]
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

output "example" {
  value = data.aws_ami.example.id
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "price" {
  value = data.aws_instance.web.price
}