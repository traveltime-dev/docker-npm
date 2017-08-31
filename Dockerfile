FROM igeolise/ubuntu:16.04

RUN apt-get update && \
    apt-get install -y build-essential && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs && \
    apt-get install -y python

COPY ./npm/* /opt/npm/

WORKDIR /opt/npm/

RUN npm install --development

ENTRYPOINT ["npm", "run", "generate"]
