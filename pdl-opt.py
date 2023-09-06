from sys import argv
from xdsl.ir import MLContext
from xdsl.dialects import pdl, arith, func

from xdsl.dialects.builtin import Builtin
from xdsl.parser import Parser
from xdsl.utils.exceptions import ParseError

from io import StringIO
from xdsl.printer import Printer

from xdsl.interpreters.experimental.pdl import PDLRewritePattern
from xdsl.pattern_rewriter import PatternRewriteWalker

ctx = MLContext()
ctx.register_dialect(Builtin)
ctx.register_dialect(arith.Arith)
ctx.register_dialect(func.Func)
ctx.register_dialect(pdl.PDL)

printer = Printer()

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


assert len(argv) == 3, 'need a mlir and pdl file'

try:
    input_module = parse_mlir_file(argv[1])
    pdl_module = parse_mlir_file(argv[2])
    printer.print_op_with_default_format(input_module)
    opt_module = run_opt(input_module, pdl_module)
    print("\n\noptimized\n")
    printer.print_op_with_default_format(opt_module)

except ParseError as e:
    print(e)



