pdl.pattern @opt0 : benefit(1) {
  %type0 = pdl.type
  %newvar1 = pdl.operand : %type0
  %1 = pdl.operation "arith.subi"(%newvar1, %newvar1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  pdl.rewrite %1 {
    %av0 = pdl.attribute = 0
    %2 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
    pdl.replace %1 with %2
  }
}
