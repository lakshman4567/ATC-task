#Dockerfile to build nodejs application with alphane image
FROM node:8
RUN mkdir -p /usr/src/application
WORKDIR /usr/src/application
ADD package.json /usr/src/application/package.json
RUN npm install --production
ADD server.js /usr/src/application/server.js
ENTRYPOINT ["node", "server.js"]