FROM ubuntu:16.04
LABEL maintainer="Wang Xu <2201295@qq.com>"

#RUN sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
#RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# Install dependencies
# needed ? xterm
RUN apt-get update -y && \
apt-get -y install git g++ make libncurses5-dev subversion libssl-dev gawk \
libxml-parser-perl unzip wget python xz-utils vim zlibc zlib1g zlib1g-dev \
openjdk-8-jdk build-essential ccache gettext xsltproc locales && \
rm -rf /var/lib/apt/lists/*

# Set the locale needed by toolchain
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen



