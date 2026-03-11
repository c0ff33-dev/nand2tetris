.PHONY: build-runtime shell clean

build-runtime:
	docker compose up --abort-on-container-exit

shell:
	docker compose run --rm runtime_builder /bin/bash

clean:
	rm -rf ../../../build/hack-runtime
	docker compose down
