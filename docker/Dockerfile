FROM fedora:latest AS builder
MAINTAINER Manuel
RUN dnf upgrade -y
RUN dnf install -y git make gcc-c++ doxygen dos2unix graphviz curl pcsc-tools pcsc-lite-devel cppunit-devel libcurl libcurl-devel libsrtp librist rpmdevtools locales
RUN git clone https://github.com/tsduck/tsduck.git && cd tsduck && sh ./script/intall-prerequisites.sh
RUN make NOTEST=1 NODEKTEC=1 NOPCSC=1 NOCURL=1 NOHIDES=1 NOEDITLINE=1 NOHWACCEL=1

FROM fedora:latest
RUN dnf install -y bash
COPY --from=builder /tsduck/src/tstools/release-x86_64/tsp /usr/bin/tsp
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_file.so /usr/bin/tslugin_file.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_ip.so /usr/bin/tslugin_ip.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_drop.so /usr/bin/tslugin_drop.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_file.so /usr/bin/tslugin_file.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_ip.so /usr/bin/tslugin_ip.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_analyze.so /usr/bin/tslugin_analyze.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_continuity.so /usr/bin/tslugin_continuity.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_count.so /usr/bin/tslugin_count.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_time.so /usr/bin/tslugin_time.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_tsrename.so /usr/bin/tslugin_tsrename.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_until.so /usr/bin/tslugin_until.so
COPY --from=builder /tsduck/src/tsplugins/release-x86_64/tslugin_zap.so /usr/bin/tslugin_zap.so
