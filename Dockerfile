# 32 bits ubuntu 14.04 base image
FROM i386/ubuntu:14.04

# Install build tools and libraries
RUN apt-get -q update &&\
	DEBIAN_FRONTEND="noninteractive" apt-get -q install -y -o Dpkg::Options::="--force-confnew" --no-install-recommends curl build-essential gcc g++ zlib1g-dev libssl-dev libcurl4-openssl-dev &&\
	rm -rf /var/lib/apt/lists/*

# Install recent CMake
RUN curl -sSL https://cmake.org/files/v3.6/cmake-3.6.3-Linux-i386.tar.gz | tar -xzC /opt &&\
	ln -s /opt/cmake-3.6.3-Linux-i386/bin/cmake /usr/local/bin/cmake
