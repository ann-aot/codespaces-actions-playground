# Specify a base image
FROM node:alpine

#Install some dependencies

WORKDIR /vue-project-test-1
COPY ./ /vue-project-test-1
RUN npm install

# Set up a default command
CMD [ "npm","start" ]