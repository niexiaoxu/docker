# docker-compose
* The docker-compose is a tool for defining and running redis and python container
## 1 the component dependencies and version of the project 
```
OS version: MAC OS 10.15.3
docker version: 19.03.8
docker-compose version: 1.25.4
conda version: 4.8.3
python version: 3.7
flask version: 1.1.1
```
# 2 How to use it
## 2.1 Step 1: install docker and docker-compose
```
docker:  https://docs.docker.com
docker-compose: https://docs.docker.com/compose/install/
```
## 2.2 Step 2: Build docker image by script
```
execute build.sh
```
## 2.3 Step 3: Run docker container
```
execute run.sh
```
## 2.4 Step 4: Stop docker containers
```
command: docker-compose -f docker-compose-v0.0.1.yml down
```
## 2.5 Step 6: Restart docker containers
```
command: docker-compose -f docker-compose-v0.0.1.yml restart
```
## 2.6 Step 5: View log 
```
command: docker-compose -f docker-compose-v0.0.1.yml logs
```

## 2.5 Step 6: View running state
```
command: docker-compose -f docker-compose-v0.0.1.yml ps
``` 
# 3 more information about docker-compose
```
https://docs.docker.com/compose/reference/overview/
```
# 4 visit website
```
http://127.0.0.0:8091
```
# 5 How to update service ?
```
step1: commit and build image
step2: update python-flask service's image version of docker-compose-v0.0.1.yml
```
