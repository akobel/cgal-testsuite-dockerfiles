FROM centos:centos7
MAINTAINER Philipp Moeller <bootsarehax@gmail.com>

RUN yum -y update; yum clean all
RUN yum -y install epel-release.noarch; yum clean all
RUN yum -y update; yum -y install \
    boost-devel.x86_64 \
    curl \
    eigen3-devel.noarch \
    gcc-c++ \
    glew-devel.x86_64 \
    glibc-devel.x86_64 \
    gmp-devel.x86_64 \
    libstdc++-devel.x86_64 \
    make \
    mpfr-devel.x86_64 \
    qt5-qtbase-devel.x86_64 \
    qt5-qtscript-devel.x86_64 \
    qt5-qtsvg-devel.x86_64 \
    qt5-qttools-devel.x86_64 \
    tar \
    zlib-devel.x86_64; yum clean all

RUN curl -fSL "https://cmake.org/files/v3.6/cmake-3.6.2-Linux-x86_64.sh" -o /usr/cmake.sh
RUN cd /usr \
 && chmod +x ./cmake.sh

RUN cd /usr \
&& ./cmake.sh --skip-license

RUN cd /etc/yum.repos.d/ && \
    curl -s -SLO https://copr.fedoraproject.org/coprs/rineau/libQGLViewer-qt5/repo/epel-7/rineau-libQGLViewer-qt5-epel-7.repo && \
    rpm --import https://copr-be.cloud.fedoraproject.org/results/rineau/libQGLViewer-qt5/pubkey.gpg && \
    yum -y install libQGLViewer-qt5-devel.x86_64; yum clean all

ENV CGAL_TEST_PLATFORM="CentOS7"
ENV CGAL_CMAKE_FLAGS=""
