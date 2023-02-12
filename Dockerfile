FROM alpine:3.14

WORKDIR /app

COPY package.json package.json 
COPY package-lock.json package-lock.json 
RUN npm install
RUN npm install pm2 -g
RUN npm run build
COPY ./dist ./dist

EXPOSE 3001
#00
#CMD [ "pm2-runtime", "dist/main.js --watch" ]
#00
#CMD [ "pm2", "npm start dist/main.js -- watch" ]
#00
#CMD [ "pm2-runtime", "run dist/main.js -- watch" ]
#99
#CMD [ "pm2-runtime", "npm start dist/main.js -- watch" ]
