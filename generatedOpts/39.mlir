pdl.pattern @opt0 : benefit(1) {
  %type0 = pdl.type
  %newvar0 = pdl.operand : %type0
  %av0 = pdl.attribute = 0
  %1 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
  %r1 = pdl.result 0 of %1
  %2 = pdl.operation "arith.addi"(%newvar0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  pdl.rewrite %2 {
    pdl.replace %2 with (%newvar0 : !pdl.value)
  }
}
pdl.pattern @opt0_com_1 : benefit(1) {
    %type0 = pdl.type
    %newvar0 = pdl.operand : %type0
    %av0 = pdl.attribute = 0
    %1 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
    %r1 = pdl.result 0 of %1
    %2 = pdl.operation "arith.addi"(%r1, %newvar0 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    pdl.rewrite %2 {
      pdl.replace %2 with (%newvar0 : !pdl.value)
    }
}
