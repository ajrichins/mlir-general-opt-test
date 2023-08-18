import pytest
import subprocess
import sys
from io import StringIO

from xdsl.ir import MLContext
from xdsl.dialects import pdl, arith, func
from xdsl.dialects.builtin import Builtin
from xdsl.parser import Parser
from xdsl.utils.exceptions import ParseError
from xdsl.printer import Printer
from xdsl.interpreters.experimental.pdl import PDLRewritePattern
from xdsl.pattern_rewriter import PatternRewriteWalker

ctx = MLContext()
ctx.register_dialect(Builtin)
ctx.register_dialect(arith.Arith)
ctx.register_dialect(func.Func)
ctx.register_dialect(pdl.PDL)

printer = Printer(print_generic_format=True)

def parse_mlir_file(fileName):
    f = open(fileName, 'r')
    input_parser = Parser(ctx, f.read()) 
    input_module = input_parser.parse_op()
    input_module.verify()
    return input_module

def run_opt(mlir_module, pdl_module):
    pdl_rewrite_op = next(op for op in pdl_module.walk() if isinstance(op, pdl.RewriteOp))
    stream = StringIO()
    PatternRewriteWalker(
        PDLRewritePattern(pdl_rewrite_op, ctx, file=stream),
        apply_recursively=False,
    ).rewrite_module(mlir_module)
    return mlir_module

def generate_opt(optNum):
    outfile = open(f"generatedOpts/{optNum}.mlir", 'w')
    souper_check = subprocess.run(["souper-check", "-pretty-print=pdl", f"souperOpts/{optNum}.txt"], stdout=outfile)
    if (souper_check.returncode != 0):
        print(f"failed to generate opt from souper SSA: {souper_check.returncode}")
        exit(1)
    outfile = open(f"generatedOpts/g{optNum}.mlir", 'w')
    mlir_opt = subprocess.run(["mlir-opt", "-mlir-print-op-generic", f"generatedOpts/{optNum}.mlir"], stdout=outfile)
    if (mlir_opt.returncode != 0):
        print(f"failed to generalize opt: {mlir_opt.returncode}")
        exit(1)

def generate_input(testNum):
    outfile = open(f"test/gt{testNum}.mlir", 'w')
    mlir_test = subprocess.run(["mlir-opt", "-mlir-print-op-generic", f"test/t{testNum}.mlir"], stdout=outfile)
    if (mlir_test.returncode != 0):
        print(f"failed to generalize test: {mlir_test.returncode}")
        exit(1)

def get_modules(testNum):
    generate_opt(testNum)
    generate_input(testNum)
    try:
        input_module = parse_mlir_file(f"test/gt{testNum}.mlir")
        pdl_module = parse_mlir_file(f"generatedOpts/g{testNum}.mlir")
    except ParseError as e:
        print(e)
    return (input_module, pdl_module)

# TESTS

def test_opt_3():
    (input_module, pdl_module) = get_modules(testNum=3)
    with open('base_test', 'w') as sys.stdout:
        printer.print_op_with_default_format(input_module)
    opt_module = run_opt(input_module, pdl_module)
    with open('opt_test', 'w') as sys.stdout:
        printer.print_op_with_default_format(opt_module)
    with open('opt_diff', 'w') as diff_file:
        subprocess.run(["diff", "base_test", "opt_test"], stdout=diff_file)
    

