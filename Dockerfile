FROM node:14-alpine

WORKDIR /home/ubuntu/myagent/_work/1/s/

COPY . .

RUN npm install

RUN npm init -y

#RUN npm run initdb
	
#ENV PORT=8080
	
EXPOSE 80

ENTRYPOINT [ "npm", "run", "dev" ]
