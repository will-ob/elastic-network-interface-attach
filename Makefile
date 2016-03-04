
docker:
	docker build --tag quay.io/will_ob/elastic-network-interface-attach .

export: docker
	docker push quay.io/will_ob/elastic-network-interface-attach:latest

.PHONY: docker export
