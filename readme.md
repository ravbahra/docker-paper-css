# node.js and live-reload container

This is a container with node.js

to build
```

```


Then you want to mount your volume


```
docker run -it -p 3000:80 -v C:/Users/RBahra/Documents/Projects/docker/docker-paper-css/html:/web document/ubuntu
```

above code worked, running ./html (relative path) didn't work