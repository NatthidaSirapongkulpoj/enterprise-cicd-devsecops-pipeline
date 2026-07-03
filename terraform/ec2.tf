resource "aws_instance" "app_server" {

  ami = "ami-xxxxxxxx"

  instance_type = var.instance_type

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  vpc_security_group_ids = [
    aws_security_group.app_sg.id
  ]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "enterprise-cicd-server"
  }
}
