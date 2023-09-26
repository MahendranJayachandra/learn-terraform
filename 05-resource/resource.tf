resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
}

data "aws_ami" "example" {
  # executable_users = [322657627157]
  most_recent      = true
  name_regex       = "WorkstationImage"
  owners           = [322657627157]
}

provisioner "remote-exec" {
    connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
    }

    inline = [
      "sudo labauto ansible",
      "ansible-pull localhost, -i https://github.com/MahendranJayachandra/roboshop-ansible main.yml -e role_name=frontend",
    ]
  }