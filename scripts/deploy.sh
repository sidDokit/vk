#!/bin/bash
remote_user="ubuntu"
remote_host="ec2-34-212-234-20.us-west-2.compute.amazonaws.com"
publish_path=${PWD}"/WebApp/bin/Release/netcoreapp3.0/"
remote_publish_path="/home/ubuntu/test"

function Pressanykey {    
read -rsp $'Press any key to continue...\n' -n1 key
}
# publish_path = "${PWD}/WebApp/bin/Release/netcoreapp3.1/publish/"
echo "Hello =)"

# ssh  ubuntu@$remote_host mkdir /home/ubuntu/test
# scp  /WebApp/bin/Release/netcoreapp3.0/* ubuntu@$remote_host:/home/ubuntu/test
# ssh  ubuntu@$remote_host tree
# ssh  ubuntu@$remote_host rm -rf /home/ubuntu/test*
# ssh  ubuntu@$remote_host tree

# ssh ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com tree
# ssh ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com rm -rf /home/ubuntu/deploy*
# ssh ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com tree
# ssh ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com mkdir /home/ubuntu/deploy /home/ubuntu/deploy/webapp/ /home/ubuntu/deploy/webapp/publish
# scp -r ~/gittest/vk/bin/Release/netcoreapp3.1/publish/* ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com:/home/ubuntu/deploy/webapp/publish
# ssh ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com tree
# Pressanykey


# scp /mnt/c/Source/Repos/vk/Scripts/docker-compose.deploy.yml ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com:/home/ubuntu/deploy/docker-compose.deploy.yml
# ssh ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com tree
# cd /mnt/c/Source/Repos/vk/Scripts/
# scp docker-compose.yml docker-compose_run.sh  ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com:/home/ubuntu/deploy/webapp/
scp -r /mnt/c/Source/Repos/vk/Scripts/*  ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com:/home/ubuntu/deploy
ssh ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com tree
ssh ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com "cd /home/ubuntu/deploy && docker-compose build && docker-compose up -d "
# --no-deps service


# mkdir gittest
# cd gittest/
# git clone https://github.com/sidDokit/vk.git
# git clone --branch ssh-deploy https://github.com/sidDokit/vk.git
# dotnet restore
# dotnet publish "Src/WebApp/WebApp.csproj" -c Release -o bin/Release/netcoreapp3.1/publish


# dotnet publish "WebApp/WebApp.csproj" -c Release -o bin/Release/netcoreapp3.1/publish
# ssh  ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com tree
# Pressanykey
# ssh  ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com rm /home/ubuntu/test/*
# ssh  ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com tree
# Pressanykey
# ssh  ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com mkdir /home/ubuntu/test
# scp  /WebApp/bin/Release/netcoreapp3.0/* ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com:/home/ubuntu/test

# ssh  ubuntu@ec2-34-212-234-20.us-west-2.compute.amazonaws.com tree
