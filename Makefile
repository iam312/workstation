build:
	docker build -t workstation .

run:
	docker run -ti -v "${PWD}/scripts:/scripts" -h cello-docker iam312/workstation /bin/zsh
