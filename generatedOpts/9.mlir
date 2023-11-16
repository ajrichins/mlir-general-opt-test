pdl.pattern @opt0 : benefit(2) {
  %type0 = pdl.type
  %newvar3 = pdl.operand : %type0
  %v0 = pdl.operand : %type0
  %2 = pdl.operation "arith.subi"(%v0, %newvar3 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = pdl.result 0 of %2
  %3 = pdl.operation "arith.addi"(%newvar3, %r2 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  pdl.rewrite %3 {
    pdl.replace %3 with (%v0 : !pdl.value)
  }
}
pdl.pattern @opt0_com_1 : benefit(2) {
    %type0 = pdl.type
    %newvar3 = pdl.operand : %type0
    %v0 = pdl.operand : %type0
    %2 = pdl.operation "arith.subi"(%v0, %newvar3 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    %r2 = pdl.result 0 of %2
    %3 = pdl.operation "arith.addi"(%r2, %newvar3 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    pdl.rewrite %3 {
      pdl.replace %3 with (%v0 : !pdl.value)
    }
}
