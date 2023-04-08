#!/bin/bash

sudo mkdir -p redis_data
sudo chown -Rf 1001:1001 redis_data
docker compose up -d
