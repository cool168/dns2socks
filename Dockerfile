FROM alpine:3.12

COPY ./dns2socks /usr/bin/
RUN chmod +x /usr/bin/dns2socks

RUN mkdir -p /app
RUN chmod +x /app
COPY ./*.sh /app/
RUN chmod +x /app/*.sh

WORKDIR /app
