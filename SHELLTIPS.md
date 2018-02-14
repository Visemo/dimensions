Shell Tips
=========

- MongoDB
- MongoDB Cluster
- MongoDB Replica
- MongoDB HA
- Docker
- Docker Composer
- Docker Kubernetes
- Django
- Flask

MongoDB
-------
1. create mongodb container  
`$ docker run -d --name dimension-mongo -p 27017:27017 mongo`

2. connect mongodb  
`mongo 127.0.0.1/dimension`

3. auth mongodb  

Docker
------
1. create docker container  
`$docker run -d --name container-name -p port-container:port-host image`

2. enter container  
`$ nsenter -t ${docker inspect --fomart="{{.State.Pid}}" dimension-mongo} -p -u -i -n -m`

Django
------
1. create django project  
`$ django-admin startproject projectname`

2. create django app  
`$ django-admin startapp appname`
