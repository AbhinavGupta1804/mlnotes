# pip install flask
from flask import Flask
import os
app = Flask(__name__)
@app.route('/', methods = ['GET'])
def home():
    return "hello world"

if __name__ == "__main__":
    app.run(debug = True, host = "0.0.0.0",port = 5000)

#benefit of 0.0.0.0 as host address are  - #Can be accessed via localhost (127.0.0.1)
#  and the device’s local IP (e.g., 192.168.x.x)

#When running a Flask app inside a Docker container,
#you must use 0.0.0.0, or else the app won't be accessible
#from outside the container.   
# 
# 0.0.0.0 allows the server to listen on all network interfaces, 
# making it accessible externally. This is useful for Docker, cloud deployments,
#  and local network access               
