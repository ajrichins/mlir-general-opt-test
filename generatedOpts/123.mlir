pdl.pattern @opt0 : benefit(5) {
  %type0 = pdl.type
  %v0 = pdl.operand : %type0
  %av1 = pdl.attribute = 1
  %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
  %r1 = pdl.result 0 of %1
  %2 = pdl.operation "arith.divsi"(%v0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  pdl.rewrite %2 {
    pdl.replace %2 with (%v0 : !pdl.value)
  }
}
