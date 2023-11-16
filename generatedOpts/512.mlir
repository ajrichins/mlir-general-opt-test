pdl.pattern @opt0 : benefit(2) {
  %type0 = pdl.type
  %symconst_1 = pdl.operation "arith.constant" -> (%type0 : !pdl.type)
  %v0 = pdl.operand : %type0
  %rsymconst_1 = pdl.result 0 of %symconst_1
  %2 = pdl.operation "arith.addi"(%v0, %rsymconst_1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = pdl.result 0 of %2
  %3 = pdl.operation "arith.subi"(%r2, %rsymconst_1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  pdl.rewrite %3 {
    pdl.replace %3 with (%v0 : !pdl.value)
  }
}
pdl.pattern @opt0_com_1 : benefit(2) {
    %type0 = pdl.type
    %symconst_1 = pdl.operation "arith.constant" -> (%type0 : !pdl.type)
    %v0 = pdl.operand : %type0
    %rsymconst_1 = pdl.result 0 of %symconst_1
    %2 = pdl.operation "arith.addi"(%rsymconst_1, %v0 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    %r2 = pdl.result 0 of %2
    %3 = pdl.operation "arith.subi"(%r2, %rsymconst_1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    pdl.rewrite %3 {
      pdl.replace %3 with (%v0 : !pdl.value)
    }
}
