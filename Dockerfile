FROM alpine

RUN apk update && apk add curl zellij asciinema bash
ADD stam.sh /root/bin/stam
ADD layout.kdl /opt/layout

CMD zellij -l /opt/layout
