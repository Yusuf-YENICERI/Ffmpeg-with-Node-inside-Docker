FROM rickydunlop/nodejs-ffmpeg

WORKDIR /home/yusuf/Desktop/docker/nodejs-ffmpeg/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PATH="/home/yusuf/Desktop/docker/nodejs-ffmpeg/app/node_modules/ffmpeg-static/bin/linux/x64/ffmpeg:${PATH}"

EXPOSE 4444

CMD [ "node", "app.js" ]


 
