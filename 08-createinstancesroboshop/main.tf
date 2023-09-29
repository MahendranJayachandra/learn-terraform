module "servers" {
  for_each = toset(["frontend", "Mongodb", "catalogue", "redis","User","cart","mysql","shipping","rabbitmq","payment","dispatch"])
  source = "./createec2"
  name = each.key
 # servers = 5
}

