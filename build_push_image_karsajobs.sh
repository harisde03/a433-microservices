#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile dengan nama image karsajobs, dan menggunakan tag latest
docker build -t ghcr.io/harisde03/karsajobs:latest .

# Login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u harisde03 --password-stdin

# Push image ke GitHub Packages
docker push ghcr.io/harisde03/karsajobs:latest
