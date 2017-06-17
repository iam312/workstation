@for /f "delims=" %%a in ('hostname') do @set hostname=%%a 
docker run -ti --rm -v c:/users/samil:/data -h "docker-%hostname%" iam312/workstation /bin/zsh
