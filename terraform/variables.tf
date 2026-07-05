############################################
# AWS Region
############################################

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

############################################
# EC2 Key Pair
############################################

variable "key_name" {
  description = "Existing EC2 Key Pair"
  type        = string
  default     = "enterprise-cicd-key"
}
############################################
# ECR Repository Name
############################################

variable "repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "enterprise-cicd-app"
}
