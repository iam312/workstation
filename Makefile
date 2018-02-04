build:
	docker build -t iam312/workstation .

run:
	docker volume create home_samil
	docker run -ti -v "${PWD}/scripts:/scripts" -v home_samil:/home/samil -v ${HOME}:/data -h "docker-$(shell HOSTNAME)" iam312/workstation /bin/zsh
