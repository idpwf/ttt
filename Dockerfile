FROM python:3.12-alpine

RUN mkdir /app
RUN mkdir /app/info

COPY app.sh /app
COPY info/info.txt /app/info

WORKDIR /app

EXPOSE 9091

ENTRYPOINT ["/app/app.sh"]
