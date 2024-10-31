FROM alpine

RUN apk update && apk add curl zellij asciinema bash
ADD stam.sh /root/bin/stam
ADD layout.kdl /opt/layout
ADD config.kdl /opt/config.kdl

CMD zellij -l /opt/layout --config /opt/config.kdl
