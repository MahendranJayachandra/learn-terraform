data "aws_ami" "example" {
  executable_users = ["322657627157"]
  most_recent      = true
  name_regex       = "WorkstationImage"
  owners           = ["322657627157"]
}