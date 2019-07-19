# VideoHub
A video sharing platform.
A rough client-server architecture replica of YouTube with Flask and MySQL.

###### All CSS files are available offline.

### Requirements

To install the requirements,
```bash
pip install -r requirements.txt
```

### Starting server

To start server,
```bash
python3 ./Server/server.py
```

### Starting client

To start client,
```bash
python3 ./Client/client.py
```


## You're done!

Visit http://127.0.0.1:5000

# Docker
For those of us who would like to run this in Docker, rather than muddy our development system with multiple versions of each language, framework, etc.

This Docker image is based on the official python docker image. Currently, everything is being installed into a single image. Eventually it would be best to run a separate DB image to more align with a general production environments.

Passenger is being used as the Application server.

Apache is being used as the HTTP server. Though I plan to switch over to nginx. 

## Requirements
- Passenger
- MySQL

## How to build the image
To build the image from the included Dockerfile:

- Open the root directory of the project in a terminal (should contain the Dockerfile)
- docker build --tag=videohub .

## How to run a container
To start a container for the videohub image

- docker run --name videohub -p 5000:5000 videohub:latest

You will then be able to run the videohub container going forward.

## Access the service
To access the service from the running container use this URL:

- http://localhost:5000

# Screenshots

## Normal user

#### Homepage
![Homepage](https://github.com/sharadbhat/VideoHub/blob/master/images/homepage.png "Homepage")

#### Login / Signup Page
![Login Page](https://github.com/sharadbhat/VideoHub/blob/master/images/login.png "Login Page")

#### Video Search Page
![Search Page](https://github.com/sharadbhat/VideoHub/blob/master/images/search.png "Search Page")

#### Upload Page
![Upload Page](https://github.com/sharadbhat/VideoHub/blob/master/images/upload.png "Upload Page")

#### Video Page
![Video Page](https://github.com/sharadbhat/VideoHub/blob/master/images/video.jpg "Video Page")

#### Video Page Full Screen
![Video Page Full Screen](https://github.com/sharadbhat/VideoHub/blob/master/images/video_full.jpg "Video Page Full Screen")

#### Dashboard
![Dashboard](https://github.com/sharadbhat/VideoHub/blob/master/images/user_dash.png "Dashboard")

### Administrator

#### Flagged Video List
![Flagged Page](https://github.com/sharadbhat/VideoHub/blob/master/images/flagged.png "Flagged Video List")

#### Users List
![Users page](https://github.com/sharadbhat/VideoHub/blob/master/images/user_list.png "Login Page")
