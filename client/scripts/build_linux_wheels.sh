#!/bin/sh

rm -r blindai/lib

rm -r third_party/attestationLib/Build

rm -r third_party/attestationLib/build

rm -r wheelhouse

python -m grpc_tools.protoc -I./proto --python_out=blindai --grpc_python_out=blindai untrusted.proto

python -m grpc_tools.protoc -I./proto --python_out=blindai --grpc_python_out=blindai securedexchange.proto

export CIBW_MANYLINUX_X86_64_IMAGE=manylinux2010

export CIBW_MANYLINUX_I686_IMAGE=manylinux2010

cibuildwheel --platform linux --output-dir dist

