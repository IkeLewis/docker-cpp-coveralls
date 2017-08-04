# Build:
#
# $ docker build -t ikelewis/cpp-coveralls .
#
# Simulate an Offline Build (testing only):
#
# $ docker build --build-arg=INSTALL_TYPE="OFFLINE" -t ikelewis/cpp-coveralls:offline .
#
# Run:
#
# $ docker run -v <your-project-dir>:/project-for-ca -w \
#   /project-for-ca cpp-coveralls <cpp-coveralls-options>

FROM python:2

# This variable is used only for testing purposes.
ARG INSTALL_TYPE="ONLINE"

SHELL [ "/bin/bash", "-c" ]

ADD cpp-coveralls /cpp-coveralls-bc
ADD docker-build.sh /

RUN ./docker-build.sh

ENTRYPOINT ["cpp-coveralls"]
CMD ["--help"]