dvdevInit:
	./bin/generateCA.sh

dvdevStart:
	docker-compose up

dvdevStop:
	docker-compose down
