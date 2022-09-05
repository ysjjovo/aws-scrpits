#!/bin/bash
openssl genrsa -out pri.pem 1024
chmod 400 pri.pem
ssh-keygen -f pri.pem -y > ssh.pub


