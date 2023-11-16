pdl.pattern @opt0 : benefit(2) {
  %type0 = pdl.type
  %v1 = pdl.operand : %type0
  %av1 = pdl.attribute = 1
  %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
  %r1 = pdl.result 0 of %1
  %2 = pdl.operation "arith.addi"(%v1, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = pdl.result 0 of %2
  %3 = pdl.operation "arith.subi"(%r2, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  pdl.rewrite %3 {
    pdl.replace %3 with (%v1 : !pdl.value)
  }
}
pdl.pattern @opt0_com_1 : benefit(2) {
    %type0 = pdl.type
    %v1 = pdl.operand : %type0
    %av1 = pdl.attribute = 1
    %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
    %r1 = pdl.result 0 of %1
    %2 = pdl.operation "arith.addi"(%r1, %v1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    %r2 = pdl.result 0 of %2
    %3 = pdl.operation "arith.subi"(%r2, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    pdl.rewrite %3 {
      pdl.replace %3 with (%v1 : !pdl.value)
    }
}
