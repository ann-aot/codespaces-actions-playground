FROM registry.access.redhat.com/ubi8/nodejs-16:1-5 as builder

# install simple http server for serving static content
RUN npm install -g http-server

# make the 'vue-project-test-1' folder the current working directory
WORKDIR /vue-project-test-1

RUN npm init

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm ci

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production with minification
RUN npm run build

EXPOSE 8080
CMD [ "http-server", "dist" , "vue-project-test-1"]