#!/bin/bash
python LitRunOpt.py t$1.mlir | filecheck litTest/t$1.mlir