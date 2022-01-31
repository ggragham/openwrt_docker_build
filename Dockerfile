FROM debian:bullseye
RUN apt update -y &&\
    apt install build-essential ccache ecj fastjar file g++ gawk \
    gettext git java-propose-classpath libelf-dev libncurses5-dev \
    libncursesw5-dev libssl-dev python python2.7-dev python3 unzip wget \
    python3-distutils python3-setuptools python3-dev rsync subversion \
    swig time xsltproc zlib1g-dev -y
RUN mkdir /opt/openwrt
WORKDIR /opt/openwrt
ENTRYPOINT [ "/bin/bash", "/opt/openwrt/build.sh" ]