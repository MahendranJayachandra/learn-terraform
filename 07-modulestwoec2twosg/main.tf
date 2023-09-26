module "servers" {
  source = "./createec2"
  name = "sample1"
 # servers = 5
}

module "servers1" {
  source = "./createec2"
  name = "sample2"
 # servers = 5
}

output "sample1" {
  value = module.servers.public_ip
}

output "sample2" {
  value = module.servers1.public_ip
}