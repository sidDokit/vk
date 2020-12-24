#!/bin/bash

cd ~
rm -rf gittest*
mkdir gittest
cd gittest/
tree
git clone https://github.com/sidDokit/vk.git
cd vk
git checkout ssh_deploy
# cd vk
# git ls-remote --heads "origin"
# git clone --branch "refs/heads/ssh_deploy" https://github.com/sidDokit/vk.git

dotnet restore
dotnet publish "Src/WebApp/WebApp.csproj" -c Release -o bin/Release/netcoreapp3.1/publish
tree bin/Release/netcoreapp3.1/publish
