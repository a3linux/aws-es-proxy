FROM alpine:latest 
MAINTAINER Allen Chen(a3linux@gmail.com)

RUN apk --update add bash openssl 
COPY aws-es-proxy /usr/bin/aws-es-proxy 

EXPOSE 9200
CMD /usr/bin/aws-es-proxy -listen $AWS_ES_PROXY_PORT -endpoint $AWS_ES_PROXY_ENDPOINT -verbose
