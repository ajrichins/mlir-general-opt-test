pdl.pattern @opt0 : benefit(0) {
  %uint16 = type : i16
  %symconst_2 = operation "arith.constant" -> (%uint16 : !pdl.type)
  %v0 = operand
  %symconst_1 = operation "arith.constant" -> (%uint16 : !pdl.type)
  %rsymconst_1 = result 0 of %symconst_1
  %3 = pdl.operation "arith.addi"(%v0, %rsymconst_1 : !pdl.value, !pdl.value) -> (%uint16 : !pdl.type)
  %rsymconst_2 = result 0 of %symconst_2
  %r3 = result 0 of %3
  %4 = pdl.operation "arith.addi"(%rsymconst_2, %r3 : !pdl.value, !pdl.value) -> (%uint16 : !pdl.type)
  rewrite %4 {
    %5 = pdl.operation "arith.addi"(%rsymconst_2, %rsymconst_1 : !pdl.value, !pdl.value) -> (%uint16 : !pdl.type)
    %r5 = result 0 of %5
    %6 = pdl.operation "arith.addi"(%v0, %r5 : !pdl.value, !pdl.value) -> (%uint16 : !pdl.type)
    replace %4 with %6
  }
}
