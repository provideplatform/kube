.PHONY: clean compose compose-united deploy deploy-united login logs

clean:
	@rm -rf ./manifest/*
	@rm -rf ./.manifests/*

compose: clean
	@./ops/compose.sh

compose-united: clean
	MANIFEST_PATH=./.manifests/united DOCKER_COMPOSE=./ops/stacks/docker-compose-united.yml ./ops/compose.sh

deploy:
	@./ops/deploy.sh

deploy-united: compose-united
	MANIFEST_PATH=./.manifests/united NAMESPACE=united DOCKER_COMPOSE=./ops/stacks/docker-compose-united.yml ./ops/deploy.sh

login:
	@./ops/login.sh

logs:
	@./ops/logs.sh
