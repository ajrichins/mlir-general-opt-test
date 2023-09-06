pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %v0 = operand : %type0
  %a0 = attribute = 18446744073709551615
  %1 = operation "arith.constant" {"value" = %a0} -> (%type0 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.xori"(%v0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %a1 = attribute = 1
  %3 = operation "arith.constant" {"value" = %a1} -> (%type0 : !pdl.type)
  %r2 = result 0 of %2
  %r3 = result 0 of %3
  %4 = pdl.operation "arith.addi"(%r2, %r3 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %4 {
    %5 = pdl.operation "arith.muli"(%v0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    replace %4 with %5
  }
}
