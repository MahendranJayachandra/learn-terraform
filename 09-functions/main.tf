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
      gender = male
    },
    muthulakshmi = {
      age = 30
      gender = female
    }
  }
  
}

output "person" {
  value = "course to choose ${element(var.courses,1)}"
}

 