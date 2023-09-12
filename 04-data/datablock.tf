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

data "aws_ec2_spot_price" "getspotprice" {
  availabilityZone = "us-east-1"
  instanceType = "t3.medium"
}

output "price" {
  value = data.aws_ec2_spot_price.getspotprice.spot_price
}