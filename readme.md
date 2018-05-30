# node.js and live-reload container

This is a container with node.js

to build
```
docker build . --tag document/ubuntu
```


Then you want to mount your volume

interactive: 
```
docker run -it -p 3000:80 -v C:/Users/RBahra/Documents/Projects/docker/docker-paper-css/html:/web document/ubuntu
```
above code worked, running ./html (relative path) didn't work

detatched:
```
docker run -d -p 3000:80 -v C:/Users/RBahra/Documents/Projects/docker/docker-paper-css/html:/web document/ubuntu
```

detached and initate the live reload


when running live server

```
live-server document.html
```

will automatically run 


complete

```
docker run -d -p 3000:80 -v C:/Users/RBahra/Documents/Projects/docker/docker-paper-css/html:/web document/ubuntu live-server /web/document.html --port=80
```