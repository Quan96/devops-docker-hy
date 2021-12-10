## Part 01

### Exercise 1.3
Steps:

1. ```docker run -d devopsdockeruh/simple-web-service:ubuntu```
2. Get the hashed id of container. In this case: ```380970e02030722278f66a6804aa293b3bb7d3467f54791d0c51f7e8731875bd```
3. ```docker exec -it 380970e02030722278f66a6804aa293b3bb7d3467f54791d0c51f7e8731875bd```
4. ```tail -f ./text.log```

Output:
```
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

### Exercise 1.4

run.sh:
```sh
#!/bin/bash
echo "Input wesite:";
read website;
echo "Searching..";
sleep 1;
curl http://$website;
```

Dockerfile:
```
FROM ubuntu
RUN apt-get update && apt-get -y install curl
WORKDIR /app
COPY run.sh /app
RUN ["chmod", "+x", "/app/run.sh"]
ENTRYPOINT [ "./run.sh" ]
```

Steps:
```
docker build -t ex1.4 .
docker run -it ex1.4
```

Output:
```
Input wesite:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="https://www.helsinki.fi/">here</a>.</p>
</body></html>
```

### Exercise 1.5

Memory space comparison:
- Ubuntu version: 83MB
- Alpine version: 15.7MB

### Exercise 1.6

Steps:
1. ```docker run -it devopsdockeruh/pull_exercise```
2. ```Input the secret word: basics```
3. ```You found the correct password. Secret message is: "This is the secret message"```

### Excercise 1.10

Steps:
1. ```docker run -d --name simple-web-service -p 8080:8080 devopsdockeruh/simple-web-service server```
2. Connect to localhost:8080 in the browser

Output:

{
    message: "You connected to the following path: /",
    path: "/"
}

### Exercise 1.13
Steps:
1. ```Navigate working directory to material-application/example-backend```
2. ```docker build -t ex1.13 -f ../../Part01/1.13/Dockerfile .```
3. ```Wait for docker to build the docker image```
4. ```docker run -d --name example-backend-1.13 -p 8080:8080 ex1.13```