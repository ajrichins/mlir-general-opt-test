pdl.pattern @opt0 : benefit(5) {
  %type0 = type
  %v0 = operand : %type0
  %0 = attribute = 1 : i32
  %1 = operation "arith.constant" {"value" = %0} -> (%type0 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.divsi"(%v0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %2 {
    replace %2 with (%v0 : !pdl.value)
  }
}
