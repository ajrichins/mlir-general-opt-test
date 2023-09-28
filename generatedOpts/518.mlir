pdl.pattern @opt0 : benefit(2) {
  %type0 = type
  %newvar2 = operand : %type0
  %v6 = operand : %type0
  %2 = pdl.operation "arith.subi"(%newvar2, %v6 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = result 0 of %2
  %3 = pdl.operation "arith.subi"(%newvar2, %r2 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %3 {
    replace %3 with (%v6 : !pdl.value)
  }
}
