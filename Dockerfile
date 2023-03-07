# Specify a base image
FROM node:alpine

#Install some dependencies

COPY package*.json ./
RUN npm ci
COPY . ./
RUN npm run build

# Set up a default command
CMD [ "npm","start" ]