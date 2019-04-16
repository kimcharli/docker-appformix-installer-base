#!/bin/bash

apt update && apt -y install openssh-server python-pip
pip install --upgrade pip && pip install -r /root/requirements-1.txt
mkdir /var/run/sshd
echo 'root:contrail123' | chpasswd
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

echo "export VISIBLE=now" >> /etc/profile


