FROM ubuntu
RUN apt-get update && apt-get -y install curl
WORKDIR /app
COPY run.sh /app
RUN ["chmod", "+x", "/app/run.sh"]
ENTRYPOINT [ "./run.sh" ]