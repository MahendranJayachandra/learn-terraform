variable "courses" {
    default = [devops,aws,azure,google]
}

output "courses" {
  value = "course name is ${courses[1]}"
}

 