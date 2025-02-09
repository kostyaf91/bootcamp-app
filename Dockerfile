FROM node:14-alpine

WORKDIR /home/ubuntu/myagent/_work/1/s/

COPY . .

RUN npm install

RUN npm init -y

EXPOSE 8080

ENTRYPOINT [ "npm", "run", "dev" ]
