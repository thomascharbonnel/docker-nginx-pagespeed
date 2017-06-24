FROM nginx

ENV NPS_VERSION 1.12.34.2-stable

COPY ${PWD}/files/nps.sh /nps.sh
COPY ${PWD}/files/nginx.sh /nginx.sh

RUN apt-get update \
    && apt-get install -y wget build-essential zlib1g-dev libpcre3 libpcre3-dev unzip libssl-dev \
    && bash /nps.sh \
    && bash /nginx.sh
