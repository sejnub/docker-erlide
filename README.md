# What is erlide?

See http://erlide.org/


## Usage
```
docker run -it -d -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix sejnub/erlide
```

If the container exits immediately you may have to disable xhost access control.
Keep in mind that this will completely disable xserver access control! Use this only during development.
```
xhost +
```

You may want to use an additional volume for your workspace.
````
docker run -it -d -e DISPLAY -v ~/erlide-workspace:/root/workspace -v /tmp/.X11-unix:/tmp/.X11-unix sejnub/erlide
```

## Used tools

|Tool|Version|Source|
|---|---|---|
|Erlang Base Image | 19.0.3|[Docker Hub](https://hub.docker.com/_/erlang/)|
|Eclipse IDE (Java Edition) | Neon | [eclipse.org](http://www.eclipse.org/downloads/eclipse-packages/?osType=linux)|
