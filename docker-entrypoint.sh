#!/bin/bash
# This script is the entrypoint of a CGAL testsuite docker container.
set -e

CGAL_DIR='/mnt/testsuite/'
CGAL_TESTRESULTS='/mnt/testresults/'
CGAL_BINARY_DIR='/build'
CGAL_SRC_DIR='/mnt/testsuite/src/'
CGAL_TEST_DIR='/mnt/testsuite/test/'

CGAL_LOG_FILE="$CGAL_TESTRESULTS${1}.log"

# Create the binary directories
if [ ! -d "$CGAL_BINARY_DIR" ]; then 
    mkdir "$CGAL_BINARY_DIR"
fi
if [ ! -d "$CGAL_BINARY_DIR/src" ]; then
    mkdir "$CGAL_BINARY_DIR/src"
fi
if [ ! -d "$CGAL_BINARY_DIR/test" ]; then
    mkdir "$CGAL_BINARY_DIR/test"
fi


# Build CGAL
cd "$CGAL_BINARY_DIR/src"
cmake -DRUNNING_CGAL_AUTO_TEST=TRUE VERBOSE=1 "$CGAL_DIR" >> "$CGAL_LOG_FILE" >&1
make VERBOSE=ON -k -fMakefile >> "$CGAL_LOG_FILE"

# Build and Execute the Tests
cd "$CGAL_BINARY_DIR/test"


# Build and Execute the Examples
