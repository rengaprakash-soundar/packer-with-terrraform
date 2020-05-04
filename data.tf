data "aws_ami" "web" {
  filter {
    name   = "state"
    values = ["available"]
  }
owners = ["527723757188"]
}
