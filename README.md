# python-restapi

atom  ~/.bashrc --> define alias
cd  /M/DEV/TS3D/_training/python-restapi


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
    a - go to https://travis-ci.org/, log in with github account, enable the repository
    b - create a travis configuration file
        - add at the root te file .travis.yml
        - add flake8 to requirements.txt
        - add flake8 config => app/.flake8

5 - unit test
    - all python files named tests or under a forder named tests will be run by travis
    - test function must all begin with test
    in gitbash
      docker-compose run app sh -c "python manage.py test && flake8"
    assertion ==> https://docs.python.org/2/library/unittest.html#assert-method

    ---- clean up ----
6 - Django user model
      a - creation of a core application
        docker-compose run app sh -c "django-admin.py startapp core"
      b - clean
      remove tests.py ==> create a folder tests, with inside __init__.py
      remove views.py
      c- add the app to the installed app list (app/settings.py)
