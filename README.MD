# build docker
docker build -t sample .

# list all containers
docker container ls -a

# stop container
docker stop {container_name}

# remove container by container_id
docker container rm {container_id}

# run container - expose port 9090
docker run -d --name {container_name} -p 9090:9090 sample

# in oreder to run app run ./deploy.sh {container_name}

