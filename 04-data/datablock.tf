data "aws_ami" "example" {
  executable_users = ["322657627157"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["322657627157"]
}