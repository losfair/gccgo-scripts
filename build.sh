#!/bin/sh
cd `dirname $0`
export GCCGOFLAGS="-O3"
cd obj/dependencies
gccgo $GCCGOFLAGS -c -o ../$1.o ../../src/$1.go && gccgo $GCCGOFLAGS -o ../../builds/$1 ../$1.o *.o ../native/*.o ../native/stdc++/*.o && strip ../../builds/$1
