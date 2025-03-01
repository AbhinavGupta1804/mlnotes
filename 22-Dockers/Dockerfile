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
# docker build -t welcome-app .