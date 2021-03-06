FROM node:8.9

MAINTAINER Duc Dao

RUN mkdir -p /app

WORKDIR /app

COPY node-app/* /app/

HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

EXPOSE 8000

CMD npm start