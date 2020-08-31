FROM node:12.14.0-alpine3.11

COPY . /home/node/app/

WORKDIR /home/node/app

RUN apk add --no-cache bash

RUN touch /home/node/.bashrc | echo "PS1='\w\$ '" >> /home/node/.bashrc

RUN npm config set unsafe-perm true

RUN npm install 

EXPOSE 3000

USER node

ENTRYPOINT ["npm","start"]
