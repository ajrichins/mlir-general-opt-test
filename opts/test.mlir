pdl.pattern @opt0 : benefit(2) {
  %type0 = type
  %2 = pdl.operation "arith.constant" -> (%type0 : !pdl.type)
  rewrite %2 {
    %3 = pdl.attribute = 0
    %4 = pdl.operation "arith.constant" {"value" = %3}-> (%type0 : !pdl.type)
    replace %2 with %4
  }
}