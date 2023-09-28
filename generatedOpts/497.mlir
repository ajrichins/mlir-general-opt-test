pdl.pattern @opt0 : benefit(2) {
  %type0 = type
  %v1 = operand : %type0
  %av1 = pdl.attribute = 1
  %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.addi"(%v1, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = result 0 of %2
  %3 = pdl.operation "arith.subi"(%r2, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %3 {
    replace %3 with (%v1 : !pdl.value)
  }
}
