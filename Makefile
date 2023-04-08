.PHONY: up down clean

up:
	cd gateway && ./run.sh
	cd elk-stack && ./run.sh
	cd minio && ./run.sh
	cd postgres && ./run.sh
	cd redis && ./run.sh

down:
	cd redis && docker compose down
	cd postgres && docker compose down
	cd minio && docker compose down
	cd elk-stack && docker compose down
	cd gateway && docker compose down

clean:
	./warning.sh
	cd redis && rm -rf *_data
	cd postgres && rm -rf *_data
	cd minio && rm -rf *_data
	cd elk-stack && rm -rf setup/data && rm -rf elasticsearch/data
