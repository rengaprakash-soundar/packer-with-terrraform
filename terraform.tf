provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "web" {
  ami           = data.aws_ami.web.id
  instance_type = "t2.micro"
  key_name ="renga123"
  tags = {
    Name = "HelloWorld1121212"
  }
}
