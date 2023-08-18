pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %v0 = operand : %type0
  %type1 = type
  %1 = pdl.operation "arith.extsi"(%v0 : !pdl.value) -> (%type1 : !pdl.type)
  %type2 = type
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.extsi"(%r1 : !pdl.value) -> (%type2 : !pdl.type)
  rewrite %2 {
    %3 = pdl.operation "arith.extsi"(%v0 : !pdl.value) -> (%type2 : !pdl.type)
    replace %2 with %3
  }
}
