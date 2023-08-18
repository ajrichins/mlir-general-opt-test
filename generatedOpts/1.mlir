pdl.pattern @opt0 : benefit(0) {
  %type0 = type
  %symconst_2 = operation "arith.constant" -> (%type0 : !pdl.type)
  %v0 = operand : %type0
  %symconst_1 = operation "arith.constant" -> (%type0 : !pdl.type)
  %rsymconst_1 = result 0 of %symconst_1
  %3 = pdl.operation "arith.addi"(%v0, %rsymconst_1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %rsymconst_2 = result 0 of %symconst_2
  %r3 = result 0 of %3
  %4 = pdl.operation "arith.addi"(%rsymconst_2, %r3 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %4 {
    %5 = pdl.operation "arith.addi"(%rsymconst_2, %rsymconst_1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    %r5 = result 0 of %5
    %6 = pdl.operation "arith.addi"(%v0, %r5 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    replace %4 with %6
  }
}
