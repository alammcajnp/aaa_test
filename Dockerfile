FROM node:16

WORKDIR /dist/app

COPY package.json package.json 
COPY package-lock.json package-lock.json 
RUN npm install --force
RUN npm install pm2 -g
COPY . . 

EXPOSE 3001
#00
#CMD [ "pm2-runtime", "dist/main.js --watch" ]
#00
#CMD [ "pm2", "npm start dist/main.js -- watch" ]
#00
#CMD [ "pm2-runtime", "run dist/main.js -- watch" ]
#99
CMD [ "pm2-runtime", "npm start dist/main.js -- watch" ]
