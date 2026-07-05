#!/bin/bash
set -euxo pipefail

exec > >(tee /var/log/user-data.log)
exec 2>&1

echo "===== START USER DATA ====="

export DEBIAN_FRONTEND=noninteractive

apt-get update -y

################################################
# Install Docker
################################################

apt-get install -y docker.io curl unzip

systemctl enable docker
systemctl start docker

usermod -aG docker ubuntu

################################################
# Install AWS CLI v2
################################################

cd /tmp

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip

unzip -q awscliv2.zip

./aws/install

aws --version

################################################
# Wait Docker
################################################

until systemctl is-active --quiet docker
do
    sleep 2
done

echo "Docker Ready"

################################################
# Wait IAM
################################################

until aws sts get-caller-identity >/dev/null 2>&1
do
    sleep 5
done

echo "IAM Ready"

################################################
# Login ECR
################################################

until aws ecr get-login-password \
--region ap-southeast-1 \
| docker login \
--username AWS \
--password-stdin 277731793168.dkr.ecr.ap-southeast-1.amazonaws.com
do
    sleep 5
done

echo "ECR Login Success"

################################################
# Pull Image
################################################

until docker pull \
277731793168.dkr.ecr.ap-southeast-1.amazonaws.com/enterprise-cicd-app:latest
do
    sleep 5
done

docker stop enterprise-cicd-app || true
docker rm enterprise-cicd-app || true

################################################
# Run Container
################################################

docker run -d \
--name enterprise-cicd-app \
-p 5000:5000 \
--restart unless-stopped \
277731793168.dkr.ecr.ap-southeast-1.amazonaws.com/enterprise-cicd-app:latest

docker ps -a

echo "===== USER DATA FINISHED ====="
