#!/bin/bash

username=$1
password=$2

sudo useradd -m $username

echo "$username:$password" | sudo chpasswd

echo "User $username created successfully with a default password."
