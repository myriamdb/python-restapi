# python-restapi

1 - create a Dockerfile at the root of the project
  a - https://hub.docker.com/ take a python lightweight version of docker (alpine) ==> 3.8.6-alpine3.12
      ==> https://github.com/docker-library/python/blob/65492057bd7e8d238e494ded1c478023036864db/3.8/alpine3.12/Dockerfile
    b - define requirements.text
    c - add app folder
    d - launch docker Dockerfile in gitbash
      cd /M/DEV/TS3D/_training/python-restapi/
       docker build .
2 - configuration composite de docker, to run easily our image, to manage the different         services: python app, database
    a - create docker-compose.yml, contains the configuration for all services of our project
      version of docker composer
    b - in git bash
      docker-compose build

3 - creation d'un projet django, in git bash
  docker-compose run app sh -c "django-admin.py startproject app ."

4 - enable Travis CI for the github project, to run python uniq tests, and python linting
go to https://travis-ci.org/, log in with github account, enable the repository
