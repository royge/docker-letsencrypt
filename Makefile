PROJ=letsencrypt
build:
	docker build --pull -t $(PROJ):latest .
	docker tag $(PROJ):latest royge/$(PROJ):latest

push:
	docker push royge/$(PROJ):latest

pre-test:
	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

test:
	container-structure-test test \
		--image $(PROJ):latest \
		--config test-config.yml
