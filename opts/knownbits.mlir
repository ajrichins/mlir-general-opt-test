pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %2 = pdl.operand : %type0 {"knownBits" = "0000"}
  %3 = pdl.attribute = 0
  %4 = pdl.operation "arith.constant" {"value" = %3}-> (%type0 : !pdl.type)
  %5 = pdl.result 0 of %4
  %6 = pdl.operation "arith.muli" (%2, %5: !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %6 {
    %7 = pdl.attribute = 0
    %8 = pdl.operation "arith.constant" {"value" = %3}-> (%type0 : !pdl.type)
    replace %6 with %8
  }
}