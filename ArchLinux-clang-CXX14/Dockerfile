FROM cgal/testsuite-docker:archlinux-clang
MAINTAINER Philipp Moeller <bootsarehax@gmail.com>

ENV CGAL_TEST_PLATFORM="ArchLinux-clang-CXX14"
ENV CGAL_CMAKE_FLAGS="(\"-DWITH_CGAL_Qt3:BOOL=OFF\" \"-DLEDA_INCLUDE_DIR=/usr/include/LEDA\" \"-DCMAKE_C_COMPILER:FILEPATH=/bin/clang\" \"-DCMAKE_CXX_COMPILER:FILEPATH=/bin/clang++\" \"-DCGAL_CXX_FLAGS=-Wall -std=c++14\")" CXX=/bin/clang++ CC=/bin/clang
