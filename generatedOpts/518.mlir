pdl.pattern @opt0 : benefit(2) {
  %type0 = pdl.type
  %newvar2 = pdl.operand : %type0
  %v6 = pdl.operand : %type0
  %2 = pdl.operation "arith.subi"(%newvar2, %v6 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = pdl.result 0 of %2
  %3 = pdl.operation "arith.subi"(%newvar2, %r2 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  pdl.rewrite %3 {
    pdl.replace %3 with (%v6 : !pdl.value)
  }
}
