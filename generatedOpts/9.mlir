pdl.pattern @opt0 : benefit(2) {
  %type0 = type
  %newvar3 = operand : %type0
  %v0 = operand : %type0
  %2 = pdl.operation "arith.subi"(%v0, %newvar3 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = result 0 of %2
  %3 = pdl.operation "arith.addi"(%newvar3, %r2 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %3 {
    replace %3 with (%v0 : !pdl.value)
  }
}
