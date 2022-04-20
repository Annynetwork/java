#!/bin/bash

openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout tls.key -out tls.crt -sub "/CN=example.com" -days 365
echo "tls cert done"


