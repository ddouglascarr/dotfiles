#!/usr/bin/env bash
set -euo pipefail

CERT_NAME="ddc-localhost-dev"
BASE_DIR="${HOME}/.local/share/${CERT_NAME}"
LOCAL_DNS_ROUTES=(
  "pds.test"
  "admin.pds.test"
  "ddc.pds.test"
)
LOCAL_CERT_NAMES=(
  "pds.test"
  "*.pds.test"
)
DNS_NAMES=("${LOCAL_CERT_NAMES[@]}" "$@")
CA_KEY="${BASE_DIR}/${CERT_NAME}-ca.key"
CA_CERT="${BASE_DIR}/${CERT_NAME}-ca.crt"
SERVER_KEY="${BASE_DIR}/localhost.key"
SERVER_CSR="${BASE_DIR}/localhost.csr"
SERVER_CERT="${BASE_DIR}/localhost.crt"
CA_CONF="${BASE_DIR}/${CERT_NAME}-ca.cnf"
SERVER_EXT="${BASE_DIR}/localhost.ext"
ANCHOR_CERT="/etc/pki/ca-trust/source/anchors/${CERT_NAME}-ca.crt"
HOSTS_BEGIN="# BEGIN ddc local dev routes"
HOSTS_END="# END ddc local dev routes"

echo "--- Installing certificate tooling"
sudo dnf install -y openssl nss-tools ca-certificates p11-kit

mkdir -p "${BASE_DIR}"
chmod 700 "${BASE_DIR}"

echo "--- Installing local DNS routes into /etc/hosts"
hosts_tmp="$(mktemp)"
trap 'rm -f "${hosts_tmp}"' EXIT
awk -v begin="${HOSTS_BEGIN}" -v end="${HOSTS_END}" '
  $0 == begin { skip = 1; next }
  $0 == end { skip = 0; next }
  !skip { print }
' /etc/hosts >"${hosts_tmp}"
{
  echo "${HOSTS_BEGIN}"
  echo "127.0.0.1 ${LOCAL_DNS_ROUTES[*]}"
  echo "::1 ${LOCAL_DNS_ROUTES[*]}"
  echo "${HOSTS_END}"
} >>"${hosts_tmp}"
sudo install -m 0644 "${hosts_tmp}" /etc/hosts

if command -v resolvectl >/dev/null 2>&1; then
  sudo resolvectl flush-caches || true
fi

if [[ ! -f "${CA_KEY}" || ! -f "${CA_CERT}" ]]; then
  echo "--- Creating local certificate authority"
  cat >"${CA_CONF}" <<EOF
[req]
distinguished_name=dn
x509_extensions=v3_ca
prompt=no

[dn]
CN=ddc localhost development CA
O=ddc dotfiles

[v3_ca]
basicConstraints=critical,CA:TRUE,pathlen:0
keyUsage=critical,keyCertSign,cRLSign
subjectKeyIdentifier=hash
authorityKeyIdentifier=keyid:always,issuer
EOF

  openssl genrsa -out "${CA_KEY}" 4096
  chmod 600 "${CA_KEY}"
  openssl req -x509 -new -nodes \
    -key "${CA_KEY}" \
    -sha256 \
    -days 3650 \
    -out "${CA_CERT}" \
    -config "${CA_CONF}"
else
  echo "--- Reusing existing local certificate authority"
fi

{
  cat <<EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage=digitalSignature,keyEncipherment
extendedKeyUsage=serverAuth
subjectAltName=@alt_names

[alt_names]
DNS.1=localhost
DNS.2=*.localhost
IP.1=127.0.0.1
IP.2=::1
EOF
  dns_index=3
  for dns_name in "${DNS_NAMES[@]}"; do
    echo "DNS.${dns_index}=${dns_name}"
    dns_index=$((dns_index + 1))
  done
} >"${SERVER_EXT}"

echo "--- Creating localhost wildcard certificate"
openssl genrsa -out "${SERVER_KEY}" 2048
chmod 600 "${SERVER_KEY}"
openssl req -new \
  -key "${SERVER_KEY}" \
  -out "${SERVER_CSR}" \
  -subj "/CN=*.localhost/O=ddc dotfiles"
openssl x509 -req \
  -in "${SERVER_CSR}" \
  -CA "${CA_CERT}" \
  -CAkey "${CA_KEY}" \
  -CAcreateserial \
  -out "${SERVER_CERT}" \
  -days 825 \
  -sha256 \
  -extfile "${SERVER_EXT}"
rm -f "${SERVER_CSR}"

echo "--- Installing CA into Fedora system trust"
sudo install -m 0644 "${CA_CERT}" "${ANCHOR_CERT}"
sudo update-ca-trust extract

import_nss_cert() {
  local db_dir="$1"

  mkdir -p "${db_dir}"
  if [[ ! -f "${db_dir}/cert9.db" ]]; then
    certutil -N -d "sql:${db_dir}" --empty-password
  fi

  certutil -D -d "sql:${db_dir}" -n "${CERT_NAME} CA" >/dev/null 2>&1 || true
  certutil -A \
    -d "sql:${db_dir}" \
    -n "${CERT_NAME} CA" \
    -t "C,," \
    -i "${CA_CERT}"
}

echo "--- Installing CA into Chromium NSS database"
import_nss_cert "${HOME}/.pki/nssdb"

if [[ -d "${HOME}/.mozilla/firefox" ]]; then
  echo "--- Installing CA into Firefox profiles"
  shopt -s nullglob
  for profile_dir in "${HOME}/.mozilla/firefox"/*.default*; do
    if [[ -d "${profile_dir}" ]]; then
      import_nss_cert "${profile_dir}"
    fi
  done
  shopt -u nullglob
fi

echo "--- Done"
echo "CA certificate: ${CA_CERT}"
echo "Server certificate: ${SERVER_CERT}"
echo "Server key: ${SERVER_KEY}"
echo
echo "Use ${SERVER_CERT} and ${SERVER_KEY} in your local HTTPS server."
echo "The certificate is valid for ${LOCAL_CERT_NAMES[*]}"
