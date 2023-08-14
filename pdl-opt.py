from sys import argv
from xdsl.ir import MLContext
from xdsl.dialects import pdl, arith, func

from xdsl.dialects.builtin import Builtin
from xdsl.parser import Parser
from xdsl.utils.exceptions import ParseError

from io import StringIO
from xdsl.printer import Printer
from xdsl.utils.diagnostic import Diagnostic

from xdsl.interpreters.experimental.pdl import PDLRewritePattern
from xdsl.pattern_rewriter import (
    PatternRewriter,
    RewritePattern,
    PatternRewriteWalker,
)

assert len(argv) == 3, 'need a mlir and pdl file'

fmlir = open(argv[1], "r")
fpdl = open(argv[2], "r")

ctx = MLContext()
ctx.register_dialect(Builtin)
ctx.register_dialect(arith.Arith)
ctx.register_dialect(func.Func)
ctx.register_dialect(pdl.PDL)


printer = Printer(print_generic_format=True)
# need to add catching parse errors
try:
    input_parser = Parser(ctx, fmlir.read(), argv[1]) 
    input_module = input_parser.parse_op()
    print()
    printer.print_op_with_default_format(input_module)

    print("\n\n")
    
    pdl_parser = Parser(ctx, fpdl.read(), argv[2])
    pdl_module = pdl_parser.parse_op()
    pdl_module.verify()

    pdl_rewrite_op = next(
        op for op in pdl_module.walk() if isinstance(op, pdl.RewriteOp)
    )

    stream = StringIO()

    PatternRewriteWalker(
        PDLRewritePattern(pdl_rewrite_op, ctx, file=stream),
        apply_recursively=False,
    ).rewrite_module(input_module)

    print("AfterOPT\n")
    printer.print_op_with_default_format(input_module)

    print("\n")

    
except ParseError as e:
    print(e)



