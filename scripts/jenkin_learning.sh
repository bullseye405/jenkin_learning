docker build -t react-frontend /var/lib/jenkins/workspace/Frontend/

docker run -it -d --restart always --name jenkin-react -p 3000:3000 jenkin-react:latest
