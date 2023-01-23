#!/bin/bash

cd /
cd /etc/ssh/
sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' sshd_config
service sshd reload
cd /
cd /etc/cloud/
sed -i 's/disable_root: 1/disable_root: 0/g' cloud.cfg

echo "Root Login Enabled On Your CentOS 7 AWS Server..."
