FROM node:latest

WORKDIR /home/node

COPY package.json .
COPY markdownlint.json .
COPY runlint.sh .

RUN npm install

CMD ["./runlint.sh"]
