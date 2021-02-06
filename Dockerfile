# build step
FROM nvcr.io/nvidia/l4t-base:r32.4.3

RUN apt-get update -y && apt-get install -y \
                                        build-essential \
                                        cmake  \
                                        gcc \
                                        git


RUN mkdir /opt/deviceQuery

ADD deviceQuery /opt/deviceQuery

RUN ls /opt/deviceQuery

WORKDIR /opt/deviceQuery

RUN make

# runtime command
CMD ["./deviceQuery"]