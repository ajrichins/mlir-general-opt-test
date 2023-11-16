from sys import argv
from xdsl.ir import MLContext
from xdsl.dialects import pdl, arith, func

from xdsl.dialects.builtin import Builtin, IntegerAttr, StringAttr
from xdsl.parser import Parser
from xdsl.utils.exceptions import ParseError

from io import StringIO
from xdsl.printer import Printer

from xdsl.interpreters.experimental.pdl import PDLRewritePattern, PDLMatcher
from xdsl.pattern_rewriter import PatternRewriteWalker

ctx = MLContext()
ctx.allow_unregistered = True
ctx.load_dialect(Builtin)
ctx.load_dialect(arith.Arith)
ctx.load_dialect(func.Func)
ctx.load_dialect(pdl.PDL)

printer = Printer()

def parse_mlir_file(fileName):
    f = open(fileName, 'r')
    input_parser = Parser(ctx, f.read()) 
    input_module = input_parser.parse_op()
    input_module.verify()
    return input_module

def run_opt(mlir_module, pdl_module):
    stream = StringIO()
    pdl_rewrite_op = next(op for op in pdl_module.walk() if isinstance(op, pdl.RewriteOp))
    PatternRewriteWalker(
        PDLRewritePattern(pdl_rewrite_op, ctx, file=stream),
        apply_recursively=False,
    ).rewrite_module(mlir_module)
    return mlir_module

def run_opts(mlir_module, pdl_module):
    stream = StringIO()
    for pdl_rewrite_op in (op for op in pdl_module.walk() if isinstance(op, pdl.RewriteOp)):
        PatternRewriteWalker(
            PDLRewritePattern(pdl_rewrite_op, ctx, file=stream),
            apply_recursively=False,
        ).rewrite_module(mlir_module)
    return mlir_module


assert len(argv) == 3, 'need a mlir and pdl file'

try:
    input_module = parse_mlir_file(argv[1])
    pdl_module = parse_mlir_file(argv[2])
    PDLMatcher.native_constraints["empty_kb"] = (
        lambda attr: isinstance(attr, StringAttr) and attr.data == "????"
    )
    printer.print_op_with_default_format(input_module)
    #opt_module = run_opt(input_module, pdl_module)
    opt_module = run_opts(input_module, pdl_module)
    #print("\n\n opt\n")
    #printer.print_op_with_default_format(pdl_module)
    print("\n\noptimized\n")
    printer.print_op_with_default_format(opt_module)

except ParseError as e:
    print(e)