## Part 01

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