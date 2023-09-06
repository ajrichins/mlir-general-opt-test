from sys import argv
import subprocess
from xdsl.ir import MLContext
from xdsl.dialects import pdl, arith, func

from xdsl.dialects.builtin import Builtin
from xdsl.parser import Parser
from xdsl.utils.exceptions import ParseError

from io import StringIO
from xdsl.printer import Printer

from xdsl.interpreters.experimental.pdl import PDLRewritePattern
from xdsl.pattern_rewriter import PatternRewriteWalker

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

def gen_opt(optNum):
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


assert len(argv) == 2, 'opt number to test'

ctx = MLContext()
ctx.register_dialect(Builtin)
ctx.register_dialect(arith.Arith)
ctx.register_dialect(func.Func)
ctx.register_dialect(pdl.PDL)

printer = Printer()

try:
    optNum = ((argv[1])[1:])[:-5] # get opt num from test filename
    gen_opt(optNum)
    input_module = parse_mlir_file(f"litTest/t{optNum}.mlir")
    pdl_module = parse_mlir_file(f"generatedOpts/g{optNum}.mlir")
    opt_module = run_opt(input_module, pdl_module)
    printer.print_op_with_default_format(opt_module)
except ParseError as e:
    print(e)