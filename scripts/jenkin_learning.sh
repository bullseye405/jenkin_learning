if [ $(docker inspect -f '{{.Name}}' ocas-frontend) = "/ocas-frontend" ]; then docker rm -f ocas-frontend; fi
if [ ! -z "$(docker images -q ocas-frontend:latest)" ]; then docker rmi -f ocas-frontend:latest; fi
docker compose -f docker-compose.stag.yml up -d
