#FROM fedora:latest
FROM ubi:9
MAINTAINER Manuel
#RUN dnf upgrade -y
#RUN dnf install -y https://github.com/tsduck/tsduck/releases/download/v3.33-3139/tsduck-3.33-3139.el9.x86_64.rpm
RUN dnf install --disablerepo=* --enablerepo=ubi-9-appstream-rpms --enablerepo=ubi-9-baseos-rpms bzip2 -y && dnf install tsduck -y
CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
