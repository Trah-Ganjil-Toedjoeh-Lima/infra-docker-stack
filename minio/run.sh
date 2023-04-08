#!/bin/bash

sudo mkdir -p minio_data
sudo chown -Rf 1001:1001 minio_data
docker compose up -d
