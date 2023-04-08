#!/bin/bash

sudo mkdir -p ./setup/data
sudo chown -Rf 1000:root ./setup/data

sudo mkdir -p ./elasticsearch/data
sudo chown -Rf 1000:root ./elasticsearch/data

docker compose up -d
