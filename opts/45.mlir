pdl.pattern @opt0 : benefit(1) {
  %type0 = pdl.type
  %v0 = pdl.operand : %type0
  %a0 = pdl.attribute = 18446744073709551615 : i64
  %1 = pdl.operation "arith.constant" {"value" = %a0} -> (%type0 : !pdl.type)
  %r1 = pdl.result 0 of %1
  %2 = pdl.operation "arith.xori"(%v0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %a1 = pdl.attribute = 1
  %3 = pdl.operation "arith.constant" {"value" = %a1} -> (%type0 : !pdl.type)
  %r2 = pdl.result 0 of %2
  %r3 = pdl.result 0 of %3
  %4 = pdl.operation "arith.addi"(%r2, %r3 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  pdl.rewrite %4 {
    %5 = pdl.operation "arith.muli"(%v0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    pdl.replace %4 with %5
  }
}
