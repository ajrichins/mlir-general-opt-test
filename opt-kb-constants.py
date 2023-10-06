from sys import argv
from util.KnownBits import *
from string import Template
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

def parse_mlir_file_str(fileStr):
    input_parser = Parser(ctx, fileStr)
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

assert len(argv) == 2, 'need a mlir file'



def detect_constant(mlir_module):
    constant_ops = set()
    for op in mlir_module.walk():
        if not isinstance(op, arith.Constant):
            if "kb" in op.attributes:
                kbStr=op.attributes["kb"].data
                kb=KnownBits.from_string(kbStr)
                if kb.isConstant():
                    constant_ops.add((op.name,kbStr,op.result.type.width.data))
    return constant_ops

constantRewriteTemplate=Template('''
"pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.attribute"() {value = "$kbStr"} : () -> !pdl.attribute
    %4 = "pdl.operation"(%1, %2, %3, %0) {attributeValueNames = ["kb"], opName = "$opName", operandSegmentSizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%4) ({
      %5 = "pdl.attribute"() {value = $kbVal : i$width} : () -> !pdl.attribute
      %6 = "pdl.operation"(%5, %0) {attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
      "pdl.replace"(%4, %6) {operandSegmentSizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operandSegmentSizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "$optName"} : () -> ()
''')

def genConstantOpRewrite(constant_ops):
    pdlStr='"builtin.module"() ({\n'
    for idx, p in enumerate(constant_ops):
        kb=KnownBits.from_string(p[1])
        pdlStr+=constantRewriteTemplate.substitute(kbStr=p[1], opName=p[0],
                                                   kbVal=str(kb.getConstant()),optName="opt"+str(idx),
                                                   width=p[2])
    pdlStr+='}) : () -> ()'
    return pdlStr

try:
    input_module = parse_mlir_file(argv[1])
    constant_ops=detect_constant(input_module)
    pdl_file=genConstantOpRewrite(constant_ops)
    #print(pdl_file)
    pdl_module=parse_mlir_file_str(pdl_file)
    printer.print_op_with_default_format(input_module)
    opt_module = run_opts(input_module, pdl_module)
    print("\n\n opt\n")
    #printer.print_op_with_default_format(pdl_module)
    print("\n\noptimized\n")
    printer.print_op_with_default_format(opt_module)

except ParseError as e:
    print(e)



