data "aws_ami" "example" {
  #executable_users = "322657627157" # the program fetching zero results when I gave my account id as executable_users
  most_recent      = true
  #name_regex       = "WorkstationImage"
  #owners           = ["322657627157"]
  name_regex       = "DevOps-Practice"
  owners           = ["973714476881"]
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

output "example" {
  value = data.aws_ami.example.id
}

data "aws_ec2_spot_price" "getspotprice" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1b"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

output "price" {
  value = data.aws_ec2_spot_price.getspotprice.spot_price
}

data "aws_security_group" "selected" {
  name = "Allow-All"
}

output "securitygroupdesc" {
  value = data.aws_security_group.selected.id
}

data "aws_iam_role" "example" {
  name = "AccessSSMParameters"
}

output "printRoleARN" {
  value = data.aws_iam_role.example.arn
}