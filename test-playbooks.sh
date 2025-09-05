#!/bin/bash

set -e

name=$(basename "$PWD")

echo "Testing Ansible playbook on Ubuntu..."
docker build -f Dockerfile.ubuntu -t $name .
docker run --rm $name

echo -e "\n===========================================\n"

echo "Testing Ansible playbook on Amazon Image..."
docker build -f Dockerfile.amazon -t $name .
docker run --rm $name

echo -e "\nTesting complete!"
