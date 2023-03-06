# Specify a base image
FROM node:alpine

#Install some dependencies
RUN CMD
WORKDIR /vue-project-test-1
RUN CMD

COPY ./ /vue-project-test-1
RUN CMD

RUN npm install

# Set up a default command
CMD [ "npm","start" ]