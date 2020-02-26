build:
	go build -o ./bin ./consumer && go build -o ./bin ./producer

run-consumer:
	./bin/consumer

run-producer:
	./bin/producer