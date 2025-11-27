#!/bin/bash

# Script to create a new user

read -p "ENTER USERNAME :" username

sudo useradd -m $username

# Set password
 echo "Enter password for $username"
sudo passwd $username


