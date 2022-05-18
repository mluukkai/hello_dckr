FROM ubuntu:18.04

WORKDIR /mydir

RUN apt update && apt upgrade -y && apt install curl -y

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt install -y nodejs

COPY . .

RUN npm install

ENV PORT=12345

CMD node index.js

# docker build -t hullo .