#!/bin/sh
set -e

wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc
mv mc /usr/local/bin

until curl -sS http://minio:9000/minio/health/live; do
  echo 'Waiting for MinIO...'
  sleep 5
done

mc alias set myminio http://minio:9000 big-data-team big-data-team

if ! mc ls myminio/big-data-team; then
  mc mb myminio/big-data-team
fi

echo "Bucket setup complete."
