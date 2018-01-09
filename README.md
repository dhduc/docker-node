# Docker Node

Simple Node application with Docker and Jenkins

## Node

```
cd node-app
npm install
npm test
npm start
```

## Docker

**Build**

```
docker build -t huuduc2107/docker-node:latest .
```

**Push**

```
docker push huuduc2107/docker-node:latest
```

**Run**

```
docker run -it -p 8000:8000 huuduc2107/docker-node [/bin/bash]
```

**Jenkins Docker**

```
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -p8080:8080 getintodevops/jenkins-withdocker:lts
```
