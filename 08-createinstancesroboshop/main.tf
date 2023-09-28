module "servers" {
  for_each = toset(["frontend", "Mongodb", "catalogue", "redis","user","cart","mysql","shipping","rabbitmq","payment","dispatch"])
  source = "./createec2"
  name = each.key
 # servers = 5
}

