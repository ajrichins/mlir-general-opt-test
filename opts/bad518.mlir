pdl.pattern @opt0 : benefit(100) {
  %type0 = type : i64
  %newvar2 = operand : %type0
  %1 = pdl.attribute = 10 : i64
  %0 = pdl.operation "arith.constant" {"value" = %1} -> (%type0 : !pdl.type)
  %v6 = pdl.result 0 of %0
  %2 = pdl.operation "arith.subi"(%newvar2, %v6 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %2 {
    replace %2 with (%v6 : !pdl.value)
  }
}
