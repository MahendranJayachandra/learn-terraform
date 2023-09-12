data "aws_ami" "example" {
  executable_users = ["322657627157"]
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