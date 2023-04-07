#!/bin/bash

sudo mkdir -p postgresql_data
sudo chown -Rf 1001:1001 postgresql_data

docker compose up -d
