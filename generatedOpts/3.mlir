pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %v0 = operand : %type0
  %a0 = attribute = 0
  %1 = operation "arith.constant" {"value" = %a0} -> (%type0 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.addi"(%v0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %2 {
    replace %2 with (%v0 : !pdl.value)
  }
}
