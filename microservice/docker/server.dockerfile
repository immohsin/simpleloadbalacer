FROM python:3.6.7

ARG MICROSERVICE_ROOT=/microservice

COPY ./server.py ${MICROSERVICE_ROOT}/server.py
COPY ./requirements.txt ${MICROSERVICE_ROOT}/requirements.txt

RUN pip3 install -r ${MICROSERVICE_ROOT}/requirements.txt
WORKDIR ${MICROSERVICE_ROOT}

ENV FLASK_APP server
ENV PYTHONPATH .
