# Specify a base image
FROM node:alpine

#Install some dependencies
RUN ls
WORKDIR /vue-project-test-1
RUN ls

COPY ./ /vue-project-test-1
RUN ls
RUN cd vue-project-test-1
RUN ls

RUN npm install

# Set up a default command
CMD [ "npm","start" ]