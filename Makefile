build:
	docker build -t workstation .

run:
	docker run -ti -v "${PWD}/scripts:/scripts" -v "${HOME}/work:/home/samil/work" -h docker-${HOST} iam312/workstation /bin/zsh
