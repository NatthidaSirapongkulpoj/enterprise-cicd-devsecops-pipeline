############################################
# Get latest Ubuntu 24.04 LTS AMI
############################################

data "aws_ssm_parameter" "ubuntu_ami" {
  name = "/aws/service/canonical/ubuntu/server/24.04/stable/current/amd64/hvm/ebs-gp3/ami-id"
}

############################################
# EC2 Instance
############################################

resource "aws_instance" "app_server" {

  ami           = data.aws_ssm_parameter.ubuntu_ami.value
  instance_type = "t3.micro"

  key_name = var.key_name

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  vpc_security_group_ids = [
    aws_security_group.app_sg.id
  ]

  associate_public_ip_address = true

  user_data = file("${path.module}/user_data.sh")

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name        = "enterprise-cicd-server"
    Project     = "enterprise-cicd-devsecops-pipeline"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
