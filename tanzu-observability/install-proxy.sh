#!/bin/bash

# Environment: RHEL 7.9

yum update -y

# Install JRE
yum install java-1.8.0-openjdk -y
yum install slf4j -y

# Source: https://packagecloud.io/wavefront/proxy/packages/el/6/wavefront-proxy-10.7-1.x86_64.rpm

curl -s https://packagecloud.io/install/repositories/wavefront/proxy/script.rpm.sh | sudo bash
yum update
yum install wavefront-proxy -y
