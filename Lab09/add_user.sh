#!/bin/bash

echo "Enter new username:"
read username
sudo useradd -m "$username"
sudo chmod 700 /home/$username

echo "User '$username' created and permissions set!"

