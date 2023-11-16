pdl.pattern @opt0 : benefit(1) {
  %type0 = pdl.type
  %v0 = pdl.operand : %type0
  %type1 = pdl.type
  %1 = pdl.operation "arith.extsi"(%v0 : !pdl.value) -> (%type1 : !pdl.type)
  %type2 = pdl.type
  %r1 = pdl.result 0 of %1
  %2 = pdl.operation "arith.extsi"(%r1 : !pdl.value) -> (%type2 : !pdl.type)
  pdl.rewrite %2 {
    %3 = pdl.operation "arith.extsi"(%v0 : !pdl.value) -> (%type2 : !pdl.type)
    pdl.replace %2 with %3
  }
}
