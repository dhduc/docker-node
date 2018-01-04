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
docker build -t huuduc2107/docker-node:lastest .
```

**Push**

```
docker push huuduc2107/docker-node:lastest
```

**Run**

```
docker run -it -p 8000:8000 huuduc2107/docker-node [/bin/bash]
```
