YEL='\033[1;33m'
RED='\033[0;31m'
GRN='\033[0;32m'
NC='\033[0m'

# Get latest image
printf "${YEL}Ensuring image is up to date.${NC}\n"
docker pull auvic/polaris:polaris_run

# Check if the container has been created
if [ ! "$( docker container ls -a | grep polaris_runtime)" ]; then
	printf "${YEL}Docker container polaris_runtime ${RED}not found${YEL}, creating new container.${NC}\n"
	docker run -it --name polaris_runtime --mount src="$(pwd)"/..,target=/usr/polaris,type=bind polaris_run
else
	printf "${YEL}Docker container polaris_runtime ${GRN}found${YEL}.${NC}\n"
	docker start -a polaris_runtime
fi
printf "${YEL}Exited.${NC}\n"
