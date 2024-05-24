#!/bin/bash

# 업데이트 및 패키지 설치
sudo apt-get update -y
sudo apt-get upgrade -y

# 필요한 패키지 설치
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# 도커 GPG 키 추가
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# 도커 레포지토리 추가
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 도커 설치
sudo apt-get update -y
sudo apt-get install -y docker-ce

# 도커 서비스 시작 및 활성화
sudo systemctl start docker
sudo systemctl enable docker

# 사용자 권한 추가
sudo usermod -aG docker ${USER}

# 도커 이미지를 사용하여 컨테이너 실행
# 여기에 원하는 도커 이미지를 지정하세요 (예: nginx:latest)
DOCKER_IMAGE="nginx:latest"

# 도커 컨테이너 실행
sudo docker run -d -p 8080:8080 pengbai/docker-supermario

echo "Docker has been installed and the container is running on port 8080."
echo "You may need to log out and log back in for the user group changes to take effect."
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Profit</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="https://raw.githubusercontent.com/mango0422/hashicat-app/main/files/ProFit_member.jpg" height="600" ></img></center>
  <center><h2>Program is fit for you!</h2></center>
  Welcome to team ProFit! We're glad to see you.<br/>
  We'll be
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
