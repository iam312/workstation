build:
	docker build -t iam312/workstation .

run:
	docker run -ti -v "${PWD}/scripts:/scripts" -v "${HOME}/work:/home/samil/work" -h "docker-$(shell HOSTNAME)" iam312/workstation /bin/zsh
