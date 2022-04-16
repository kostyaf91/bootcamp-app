FROM node:14-alpine

WORKDIR /home/ubuntu/myagent/_work/1/s/

COPY . .

RUN npm install &&\
    npm init -y &&\
    npm run initdb
	
ENV PORT=8080
	
EXPOSE 8080

ENTRYPOINT [ "npm", "run", "dev" ]
