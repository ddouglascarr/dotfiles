#!/usr/bin/env bash
set -euo pipefail

PG_USER="${USER:?}"
PG_DB="${PG_USER}"
PG_PASSWORD="${POSTGRES_PASSWORD:-${PG_USER}}"
PGDATA="/var/lib/pgsql/data"
HBA_FILE="${PGDATA}/pg_hba.conf"
HBA_MARKER="# dotfiles localhost password auth"

echo "--- Installing Postgres"
sudo dnf install -y postgresql-server postgresql-contrib

if sudo test -s "${PGDATA}/PG_VERSION"; then
  echo "--- Postgres already initialized"
elif ! sudo test -e "${PGDATA}"; then
  echo "--- Initializing Postgres"
  sudo postgresql-setup --initdb
elif [[ -z "$(sudo find "${PGDATA}" -mindepth 1 -maxdepth 1 -print -quit)" ]]; then
  echo "--- Initializing Postgres"
  sudo postgresql-setup --initdb
else
  echo "ERROR: ${PGDATA} is not empty, but ${PGDATA}/PG_VERSION is missing" >&2
  exit 1
fi

echo "--- Starting Postgres"
sudo systemctl enable --now postgresql

echo "--- Configuring localhost password auth"
if ! sudo grep -qF "${HBA_MARKER}" "${HBA_FILE}"; then
  TMP_FILE="$(mktemp)"
  {
    printf '%s\n' "${HBA_MARKER}"
    printf 'host all all 127.0.0.1/32 scram-sha-256\n'
    printf 'host all all ::1/128 scram-sha-256\n'
    sudo cat "${HBA_FILE}"
  } > "${TMP_FILE}"
  sudo install -o postgres -g postgres -m 0600 "${TMP_FILE}" "${HBA_FILE}"
  rm -f "${TMP_FILE}"
fi

sudo systemctl reload postgresql

echo "--- Creating Postgres superuser"
sudo -u postgres psql -d postgres -v ON_ERROR_STOP=1 -v user_name="${PG_USER}" <<'SQL'
SELECT format('CREATE ROLE %I WITH SUPERUSER CREATEDB CREATEROLE LOGIN', :'user_name')
WHERE NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = :'user_name') \gexec
SELECT format('ALTER ROLE %I WITH SUPERUSER CREATEDB CREATEROLE LOGIN', :'user_name') \gexec
SQL

echo "--- Setting Postgres password"
sudo -u postgres psql -d postgres -v ON_ERROR_STOP=1 -v user_name="${PG_USER}" -v user_password="${PG_PASSWORD}" <<'SQL'
SELECT format('ALTER ROLE %I WITH PASSWORD %L', :'user_name', :'user_password') \gexec
SQL

echo "--- Creating Postgres database"
sudo -u postgres psql -d postgres -v ON_ERROR_STOP=1 -v db_name="${PG_DB}" -v owner_name="${PG_USER}" <<'SQL'
SELECT format('CREATE DATABASE %I OWNER %I', :'db_name', :'owner_name')
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = :'db_name') \gexec
SELECT format('ALTER DATABASE %I OWNER TO %I', :'db_name', :'owner_name') \gexec
SQL
