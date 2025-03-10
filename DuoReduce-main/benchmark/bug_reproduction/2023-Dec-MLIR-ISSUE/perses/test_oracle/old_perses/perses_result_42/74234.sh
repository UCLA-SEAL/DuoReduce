#!/bin/bash

# Execute the command and capture the output
output=$(~/circt/llvm/build/bin/mlir-opt --int-range-optimizations /scratch/jiyuan/MLIR-s-benchmark/CIRCT/benchmark/2023-Dec-MLIR-ISSUE/perses/generic_mlir/74234.mlir 2>&1)

# Search for "Assertion" and "Failed" in the output
if [[ $output == *"Assertion"* && $output == *"failed"* ]]; then
  echo 0
else
  echo 1
fi
