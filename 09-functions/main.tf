variable "courses" {
    default = ["devops","aws","azure","google"]
}

output "courses" {
  value = "course name is ${var.courses[1]}"
}

variable "person" {
  default = {
    mahendran = {
      age = 35
      gender = "male"
      course = "devops"
    },
    muthulakshmi = {
      age = 30
      gender = "female"
    }
  }
  
}

output "courses1" {
  value = "course to choose ${element(var.courses,6)}"
}

output "person" {
  value = "number of persons are ${length(var.person)}"
}

output "muthulakshmi" {
  value = "age is ${var.person["muthulakshmi"]["age"]}"
}

output "personcourse" {
  value = lookup(var.person,"shanmugam",lookup(var.person,"mahendran","no person"))
}

variable "instancedetails" {
  default = {
  frontend = {
    intance_type = "t2.micro"
  },
  Mongodb = {
    instance_type = "t3.micro"
  },
  Catalogue = {
    instance_type = "t3.micro"
  }
}
}

data "aws_ami" "example" {
  #executable_users = ["self"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [322657627157]
}

resource "aws_instance" "instances" {
  for_each = var.instancedetails
  ami = data.aws_ami.example
  instance_type = each.value.instance_type
  tags = {
    name = each.key
  }
  
}
