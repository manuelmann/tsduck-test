FROM fedora:latest
MAINTAINER Manuel
RUN dnf install -y https://github.com/tsduck/tsduck/releases/download/v3.34-3197/tsduck-3.34-3197.fc38.x86_64.rpm iproute net-tools
CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
