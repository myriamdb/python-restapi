FROM python:3.8-alpine
# MAINTAINER HE reader chapter
ENV PYTONUNBUFFERED 1

# dependencies
COPY ./requirements.txt ./requirements.txt
RUN pip install -r /requirements.txt

# folder for the app
RUN mkdir /app
WORKDIR /app
COPY ./app /app


#add a user to run the application (only -D)
#to avoid run the appl under the root account user
RUN adduser -D user
USER user
