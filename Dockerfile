FROM python:3.8-alpine 
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD python app.py


#first line will try to pull this image(python:3.8-alpine) from dockerhub repository
# 2️⃣ COPY . /app
# Copies all files from the current directory (on your machine) into the /app directory inside the container.
# 3️⃣ WORKDIR /app
# Sets /app as the working directory (so all commands will now run inside /app).
# 4️⃣ RUN pip install -r requirements.txt
# Installs all Python dependencies listed in requirements.txt.
# 5️⃣ CMD python app.py
# Runs app.py when the container starts.
# CMD specifies the default command but can be overridden when running the container.

#FROM python:3.8-alpine
# Uses the official Python 3.8 image based on Alpine Linux (a lightweight OS).
# Alpine makes the container small and efficient.



#COMMANDS
# docker build -t welcome-app . =>creating docker image welcome-app
# docker images  => to check if docker image is built or not
# docker run -p 5000:5000 welcome-app =>both host and container port are 5000

#so basically we can run this file thru localhost , laptop ip, and 127 wale se

#127.0.0.1:5000 → This is your localhost, meaning the app is accessible only 
#from your host machine (your computer).
#172.17.0.2:5000 → This is the internal Docker network IP of your container. 
#Other containers in the same network can access it, but it’s not accessible
#from your host machine directly
#thats why error




#here we are deleting and recreating a docker image
#docker login
#docker image rm -f welcome-app  => to remove this docker image
#docker images  => to check if image is removed or not
# =>to delete image u need to stop running container which is using that image
#docker stop container_id
#docker build -t abhi1804gupta/welcome-app .

#=>✅ The image name includes your Docker Hub username → useful if you plan 
#=>to push it to Docker Hub.✅ Allows others to pull your image using
#=>docker pull abhi1804gupta/welcome-app

#docker tag abhi1804gupta/welcome-app abhi1804gupta/welcome-app1
#=>The command does NOT duplicate or recreate the image.
#=>It just adds another reference (tag) to the same image.

#docker push abhi1804gupta/welcome-app:latest =>pushing docker image in docker hub
#docker image rm -f c488d5cb5b7a           =>deleting docker image 
#docker pull abhi1804gupta/welcome-app:latest =>pulling docker image from docker hub
#docker run -d -p 5000:5000 abhi1804gupta/welcome-app:latest =>running it


 