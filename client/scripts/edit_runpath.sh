#!/bin/sh

find . -name "_quote_verification*.so" | xargs -l1 -t patchelf --set-rpath "\$ORIGIN/blindai/lib"
