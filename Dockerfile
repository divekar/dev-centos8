FROM arm64v8/rockylinux:9

# Install Devtoolset

RUN yum -y groupinstall 'Development Tools'
RUN yum -y clean all && \
    yum -y install epel-release && \
    yum -y install git gcc-c++ openssl-devel make chrpath \
        valgrind wget which openssl-libs libicu zlib git libtool rpm-build gzip tar \
        openssh openssh-server openssh-clients && \
    yum -y clean all

# Set up Devtoolset environment
ENV PATH=/opt/rh/devtoolset-9/root/usr/bin:$PATH

# Install essential tools for C++ development
#RUN yum install -y git wget curl vim valgrind gdb clang clang++ python3

ENV LD_LIBRARY_PATH=/usr/local/lib64:/usr/local/lib
ENV PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
ENV TERM=xterm-256color

WORKDIR /code


