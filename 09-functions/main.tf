variable "courses" {
    default = ["devops","aws","azure","google"]
}

output "courses" {
  value = "course name is ${var.courses[1]}"
}

variable "person" {
  default = {
    "mahendran" = {
      age = 35
      gender = "male"
    },
    "muthulakshmi" = {
      age = 30
      gender = "female"
    }
  }
  
}

output "courses1" {
  value = "course to choose ${element(var.courses,6)}"
}

output "person" {
  value = "number of persons are ${var.person.length}"
}

output "muthulakshmi" {
  value = "age is ${var.person["muthulakshmi"][age]}"
}
 