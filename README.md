# docker-erlide

## Building
```bash
docker build -t docker-erlide .
```

## Usage
```
docker run -it -d -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix docker-erlide
```

You may want to use another volume for your workspace.

````
docker run -it -d -e DISPLAY -v ~/erlide-workspace:/root/workspace -v /tmp/.X11-unix:/tmp/.X11-unix docker-erlide
```

## Used tools

|Tool|Version|Source|
|---|---|---|
|Erlang Base Image | 19.0.3|[Docker Hub](https://hub.docker.com/_/erlang/)|
|Eclipse IDE (Java Edition) | Neon | [eclipse.org](http://www.eclipse.org/downloads/eclipse-packages/?osType=linux)|
