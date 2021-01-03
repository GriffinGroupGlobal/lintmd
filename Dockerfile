FROM 540619935031.dkr.ecr.us-east-1.amazonaws.com/nodedev:master
LABEL maintainer="dev@estatespace.com"

WORKDIR /home/node

COPY package.json .
COPY markdownlint.json .
COPY runlint.sh .

RUN npm install

ENV NODE_ENV development

CMD ["/home/node/runlint.sh"]
