pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %newvar0 = operand : %type0
  %0 = attribute = 0 : i16
  %1 = operation "arith.constant" {"value" = %0} -> (%type0 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.addi"(%newvar0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %2 {
    replace %2 with (%newvar0 : !pdl.value)
  }
}
