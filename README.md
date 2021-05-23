# Bismillahirrahmanirrahim


# Ffmpeg-with-Node-inside-Docker
Ffmpeg with Node inside Docker

It is a common problem that people struggle with how to setup a node environment alongside with ffmpeg inside Docker.

This problem is solved Alhamdulillah.

The resource I have inspired from:

https://stackoverflow.com/questions/50693091/ffmpeg-install-within-existing-node-js-docker-image

Here is the steps you need to do:

1- Make a directory called app.

2- Put your all files into app directory alongside with package.json etc.

3- Add this "ffmpeg-static": "^2.3.0" into dependencies in package.json

4- Then run "npm install" inside the app directory.

5- Now, you should have a file called as package-lock.json.

7- Include this lines inside your main js file(the file you write your code):

var ffmpeg_static = require('ffmpeg-static');

console.log("path to ffmpeg: " + ffmpeg_static.path);

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

WORKDIR /home/asd/Desktop/app -> this is an example path

11- Build the "Dockerfile", the command is: "sudo docker build -t yusuf/node-with-ffmpeg ."

12- When build finishes, run "sudo docker container run -it --name testing -p 49160:4444 yusuf/node-with-ffmpeg"

13- Access the application with localhost:49160


Türkçe'de stepler:

1- app adlı bir dizin oluşturun.

2- Tüm dosyalarınızı package.json vb. İle birlikte app dizinine koyun.

3- "ffmpeg-static": "^ 2.3.0" ı package.json içindeki dependencies'e ekleyin

4- Ardından app dizini içinde "npm install" komutunu çalıştırın.

5- Artık package-lock.json adında bir dosyanız olmalı.

7- Bu satırları main js dosyanıza ekleyin(kodlarınızı yazdığınız dosya, app.js gibi):

var ffmpeg_static = required ('ffmpeg-static');

console.log ("ffmpeg yolu:" + ffmpeg_static.path);

8- -> "node app.js" gibi "node sizinDosyaniz.js" komutunu çalıştırın

9- ffmpeg yolunu şu şekilde almalısınız -> "ffmpeg yolu: ../..asdlaslkdjalksjd"

10- Daha sonra yolu kopyalayın ve ffmpeg dosyasından yeni bir nesne oluşturduktan sonra bunu yapıştırın.

Misal:

var proc = new ffmpeg ({...})

proc.setFfmpegPath ("ffmpeg'e giden yolunuz") -> bunu ekleyin

10- Dockerfile'ı oluşturmanın zamanı geldi, ancak oluşturmadan önce bu deponun içindeki "Dockerfile" dosyasını indirin ve app dizini yolunuzu dockerfile'a koyun:

Değişiklik

WORKDIR {sizin-path'iniz}

-e

WORKDIR /home/asd/Desktop/app -> bu örnek bir yoldur

11- "Dockerfile" dosyasını oluşturun, komut: "sudo docker build -t yusuf / node-with-ffmpeg."

12- Derleme tamamlandığında, "sudo docker container run -it --name testing -p 49160: 4444 yusuf / node-with-ffmpeg" komutunu çalıştırın.

13- Uygulamaya erişmek için: localhost:49160
