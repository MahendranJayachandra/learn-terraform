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