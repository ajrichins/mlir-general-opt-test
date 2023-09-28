pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %v0 = operand : %type0
  %av0 = pdl.attribute = 0
  %1 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.subi"(%v0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %2 {
    replace %2 with (%v0 : !pdl.value)
  }
}
