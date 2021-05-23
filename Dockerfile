FROM rickydunlop/nodejs-ffmpeg

WORKDIR {your-path}

COPY package*.json ./

RUN npm install

COPY . .


EXPOSE 4444

CMD [ "node", "app.js" ]


 
