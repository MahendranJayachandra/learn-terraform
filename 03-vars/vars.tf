variable "name" {
  default = "Muthulakshmi"
}

variable "age" {
  default = 30
}

# variable "female" {
#   default = yes
# }

output "Name" {
  value = "Name is ${var.name}"
}

output "age" {
  value = "age is ${var.age}"
}

# output "female" {
#   value = "Female = ${female}"
# }

variable "createlist" {
    default = ["apple","orange","custard apple"]
}

output "fruits" {
  value = "fruits are ${createlist}"
}