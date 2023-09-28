pdl.pattern @opt0 : benefit(2) {
  %type0 = type
  %symconst_1 = pdl.operation "arith.constant" -> (%type0 : !pdl.type)
  %v0 = operand : %type0
  %rsymconst_1 = result 0 of %symconst_1
  %2 = pdl.operation "arith.addi"(%v0, %rsymconst_1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = result 0 of %2
  %3 = pdl.operation "arith.subi"(%r2, %rsymconst_1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %3 {
    replace %3 with (%v0 : !pdl.value)
  }
}
