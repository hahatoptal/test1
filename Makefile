build:
	docker build -t kasra/test1 .

run-container:
	docker run -p 49160:8080 -d kasra/test1

test:
	curl localhost

clean:
	rm -rf node_modules


.PHONY: install build run test clean
