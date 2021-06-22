dvdevInit:
	./bin/generateCA.sh

dvdevStart:
	docker-compose up -d

dvdevStop:
	docker-compose down
