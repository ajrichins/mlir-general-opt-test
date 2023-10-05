pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %0 = pdl.operand : %type0
  %1 = pdl.operand : %type0
  %targetKB = pdl.attribute = "????"
  %2 = pdl.operation "arith.addi" (%0, %1: !pdl.value, !pdl.value) {"kb" = %targetKB}-> (%type0 : !pdl.type)
  rewrite %2 {
    %3 = pdl.attribute = 2
    %4 = pdl.operation "arith.constant" {"value" = %3} -> (%type0 : !pdl.type)
    replace %2 with %4
  }
}