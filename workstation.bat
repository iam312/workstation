@echo OFF
@for /f "delims=" %%a in ('hostname') do @set hostname=%%a 

@docker volume ls | find "home_samil" > NUL
if %ERRORLEVEL% EQU 1 (
    docker volume create home_samil
)

:: home_samil => for home directory
:: c:/users/samil => for exchange files with host machine
docker run -ti --rm -v home_samil:/home/samil -v c:/users/samil:/data -h "docker-%hostname%" iam312/workstation /bin/zsh
