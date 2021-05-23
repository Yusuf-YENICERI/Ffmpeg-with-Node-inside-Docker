# Bismillahirrahmanirrahim


# Ffmpeg-with-Node-inside-Docker
Ffmpeg with Node inside Docker

It is a common problem that people struggle with how to setup a node environment alongside with ffmpeg inside Docker.

This problem is solved Alhamdulillah.

The resource I have inspired from:

https://stackoverflow.com/questions/50693091/ffmpeg-install-within-existing-node-js-docker-image

Here is the steps you need to do:

1- Make a directory called app.

2- Put your all source files into app directory alongside with package.json etc.

3- Add this "ffmpeg-static": "^2.3.0" into dependencies in package.json

4- Then run "npm install" inside the app directory.

5- Now, you should have a file called as package-lock.json.

7- Include this lines inside your main js file:

var ffmpeg = require('ffmpeg-static');

console.log("path to ffmpeg: " + ffmpeg.path);

8- Run "node yourMainFile.js" such as -> "node app.js"

9- Then you will get the path to ffmpeg, like this -> "path to ffmpeg: ../..asdlaslkdjalksjd"

10- After then copy the path and paste this after you make a new object from ffmpeg file.

Example:

var proc = new ffmpeg({...})

proc.setFfmpegPath("your path to ffmpeg") -> include this

10- It is time to build the dockerfile, but before building, download the "Dockerfile" inside this repository and put your app directory path into dockerfile:

Change

WORKDIR {your-path}

to

WORKDIR /home/asd/Desktop/app

11- Build the "Dockerfile", the command is: "sudo docker build -t yusuf/node-with-ffmpeg ."

12- When build finishes, run "sudo docker container run -it --name testing -p 49160:4444 yusuf/node-with-ffmpeg"
