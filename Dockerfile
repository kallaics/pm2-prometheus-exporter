FROM node:16-alpine

WORKDIR /home/app

RUN apk add git
RUN npm install pm2 -g
# RUN pm2 update

COPY test.js .
# RUN pm2 start test.js
#RUN pm2 save

COPY exporter.js .
COPY package*.json .
COPY start.sh .
# RUN npm install --save
# ENTRYPOINT ["nodejs", "exporter.js"]
ENTRYPOINT ["/bin/sh", "start.sh"]