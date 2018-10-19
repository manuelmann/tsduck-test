FROM fedora:latest
MAINTAINER Manuel

RUN dnf install -y git make gcc-c++ doxygen dos2unix graphviz curl pcsc-tools pcsc-lite-devel cppunit-devel libcurl libcurl-devel rpmdevtools
RUN git clone https://github.com/manuelmann/tsduck-test.git && cd tsduck-test && make
ENTRYPOINT ["/bin/bash"]
