FROM fedora:latest
MAINTAINER Manuel
RUN dnf upgrade -y
RUN dnf install -y https://github.com/tsduck/tsduck/releases/download/v3.33-3139/tsduck-3.33-3139.el9.x86_64.rpm
#ENTRYPOINT ["/bin/bash"]
CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
