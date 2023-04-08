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
	cd redis && sudo rm -rf *_data
	cd postgres && sudo rm -rf *_data
	cd minio && sudo rm -rf *_data
	cd elk-stack && sudo rm -rf setup/data && sudo rm -rf elasticsearch/data
