# erlide

## What is erlide?
Erlide is an IDE for Erlang, powered by Eclipse. See http://erlide.org/

## Build
```bash
docker build -t sejnub/erlide .
```

## Run
```
docker run -it -d -e DISPLAY --name erlide -v /tmp/.X11-unix:/tmp/.X11-unix sejnub/erlide
```

You might want to use an additional volume for your workspace.
````
docker run -it -d -e DISPLAY --name erlide -v ~/erlide-workspace:/root/workspace -v /tmp/.X11-unix:/tmp/.X11-unix sejnub/erlide
```

If the container exits immediately you may have to disable xhost access control for local connections.
```
xhost +local:
```

If the container runs remotely you could disable xhost access control for all connections.
Keep in mind that this will disable xserver access control! Use this only during development.
```
xhost +
```

To open a bash into the running container you can type
```
docker exec -it erlide bash
```
or 
```
uxterm -e "docker exec -it erlide bash" &
```

## Used tools

|Tool|Version|Source|
|---|---|---|
|Erlang Base Image | 19.0.3|[Docker Hub](https://hub.docker.com/_/erlang/)|
|Eclipse IDE (Java Edition) | Neon | [eclipse.org](http://www.eclipse.org/downloads/eclipse-packages/?osType=linux)|
