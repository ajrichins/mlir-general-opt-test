#!/bin/bash
souper-check -pretty-print=pdl souperOpts/$1.txt > generatedOpts/$1.mlir
mlir-opt -mlir-print-op-generic generatedOpts/$1.mlir > generatedOpts/g$1.mlir
mlir-opt -mlir-print-op-generic test/t$1.mlir > test/gt$1.mlir
python pdl-opt.py test/gt$1.mlir generatedOpts/g$1.mlir