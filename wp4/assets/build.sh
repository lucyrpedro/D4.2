#!/bin/bash
for I in $(find -name Makefile) ; do pushd $(dirname $I) ; make ; popd ; done
