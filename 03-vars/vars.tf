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
  value = "fruits are ${var.createlist[2]}"
}

variable "createmap" {
  default = {
    "apple":"10"
    "orange":"20"
    "custard apple":"50"
  }
}

output "displaymap" {
  value = var.createmap
}

variable "createmultiplemap" {
  default = {
      "orange" = {
        "color": "orange"
        "price": 300
      }

      "apple" = {
        "color":"red"
        "price": 500
      }

  }
  
}

output "displaymultiplemap" {
  value = var.createmultiplemap[1]
}