Dimensions - Proton
==================

- Service Name
- Description
- Build & Release
- Deployment

Service Name
-----------
Proton

Description
-----------
Dimension-Proton is the central service of dimensons structure, proton database stores most of the core information.

Turtorial
---------
To setup local enviroment.  
1. change settings.py database hostname in dimensions.
```
MONGODB_DATABASES = {                                                                                                
    'default': {                                                                                                     
        'name': 'dimensions',                                                                                              
        'host': '127.0.0.1',                                                                                     
        'username': 'dimensionsuser',                                                                                          
        'password': 'dimensionspwd',                                                                                          
        'tz_aware': True,                                                                                            
    }                                                                                                                
}
```
2. run an local mongo database container.

Build
---------------
`$ docker build -t dimension-proton:latest`

Deployment
----------
`$ docker run -t -p 80:8000 --name dimension-proton dimension-proton`
