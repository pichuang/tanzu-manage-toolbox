#!/bin/bash

set -x
HTTP_PROXY=squid.pichuang.local
WAVEFRONT_NAME=vmware.wavefront.com

curl -o /dev/null -s -w "%{http_code}\n" -L "https://${WAVEFRONT_NAME}/index.html" -x "${HTTP_PROXY}:3128"
