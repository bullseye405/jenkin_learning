if [ $(docker inspect -f '{{.Name}}' jenkins-learning) = "/jenkins-learning" ]; 
    then docker rm -f jenkins-learning; fi
if [ ! -z "$(docker images -q jenkins-learning:latest)" ]; 
    then docker rmi -f jenkins-learning:latest; fi
docker compose -f docker-compose.yml up -d