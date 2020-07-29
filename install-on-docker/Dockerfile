FROM fedora:latest
MAINTAINER Manuel
RUN dnf upgrade -y
RUN dnf install -y https://github.com/tsduck/tsduck/releases/download/v3.21-1819/tsduck-3.21-1819.fc32.x86_64.rpm
#ENTRYPOINT ["/bin/bash"]
CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
