pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %newvar1 = operand : %type0
  %1 = pdl.operation "arith.subi"(%newvar1, %newvar1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %1 {
    %av0 = pdl.attribute = 0
    %2 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
    replace %1 with %2
  }
}
