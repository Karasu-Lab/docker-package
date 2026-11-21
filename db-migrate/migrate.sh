#!/bin/sh
set -e
for app in accounts api-auth; do
  echo "Applying ${app} migrations"
  MIGRATIONS_DIR="/migrations/${app}" MIGRATIONS_TABLE="__drizzle_migrations_${app}" npx drizzle-kit migrate --config drizzle.config.mjs
done
