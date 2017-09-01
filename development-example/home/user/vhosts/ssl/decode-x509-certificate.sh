#!/bin/bash

CERTIFICATE_PATH=$1

if [ -z ${CERTIFICATE_PATH} ]; then
    printf "Usage: $0 CERTIFICATE_PATH\nE.g. Usage: $0 path/to/ssl.cert\n"
    exit 0
fi

openssl x509 -in ${CERTIFICATE_PATH} -text -noout