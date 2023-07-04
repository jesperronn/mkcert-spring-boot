#!/usr/bin/env bash
# setup script. Any development prerequisites can be in this file

set -euo pipefail

pushd "$(dirname "$0")"/.. > /dev/null || exit 1

setup_local_ssl_cert() {
  echo "create local ssl certificate (requires mkcert)"
  mkcert -install
  mkcert \
    -cert-file src/main/resources/localhost-cert.pem \
    -key-file src/main/resources/localhost-cert-key.pem \
    localhost "*.localhost" "*.docker.localhost" 127.0.0.1 ::1
}

run_main() {
  setup_local_ssl_cert
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
  run_main "$@"
fi
