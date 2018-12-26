FROM ubuntu 
RUN apt-get update && apt-get install nodejs -y && apt-get install npm -y
RUN npm i npm@5.1.0 -g
RUN npm i pm2 -g
WORKDIR /app
COPY . /app
RUN npm install 
CMD pm2 start index.js && pm2 logs && tail -f /dev/null
EXPOSE 3000


