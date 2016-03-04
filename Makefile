
docker:
	docker build --tag quay.io/will_ob/elastic-network-interface-attach .

export: docker
	./bin/deploy

.PHONY: docker export
