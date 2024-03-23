#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile dengan nama image item-app, dan menggunakan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/harisde03/item-app:v1

# Login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u harisde03 --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/harisde03/item-app:v1

