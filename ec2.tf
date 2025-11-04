provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::767828764710:role/TerraformAssumeRole"
    session_name = "terraform-session"
  }
}
resource "aws_instance" "Dev" {
  ami           = "ami-0b09ffb6d8b58ca91"
  instance_type = "t2.micro"

  tags = {
    Name = "DEV-EC2"
  }
}
