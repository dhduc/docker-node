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

```
docker build -it huuduc_2107/docker-node .
docker run -it -p 8000:8000 docker-node
```
