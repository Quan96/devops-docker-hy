FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY run.sh .

RUN apt-get update && apt-get -y install curl
RUN chmod +x /usr/src/app/run.sh

CMD [ "./run.sh" ]