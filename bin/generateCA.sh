#! /bin/bash
echo """
==================================================
  Install root certificates
==================================================
"""
mkcert --install

echo """
==================================================
  Creating certificate for DVDEV environment
==================================================
"""
mkcert --key-file dvdev-env-key.pem --cert-file dvdev-env.pem '*.local.dvdev.cz' localhost 127.0.0.1 ::1

echo """
==================================================
  Copying certificates to ./certs
==================================================
"""
mkdir -p ./certs

mv ./dvdev-env.pem ./certs
mv ./dvdev-env-key.pem ./certs
