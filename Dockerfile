FROM node:14.18.2
RUN mkdir -p /tmp/app
WORKDIR /tmp/app

COPY . .
RUN yarn 
CMD [ "yarn", "start" ]