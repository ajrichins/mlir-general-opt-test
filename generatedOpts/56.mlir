pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %v0 = operand : %type0
  %v1 = operand : %type0
  %a0 = attribute = 0 : i32
  %2 = operation "arith.constant" {"value" = %a0} -> (%type0 : !pdl.type)
  %3 = pdl.operation "arith.subi"(%v0, %v1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %r2 = result 0 of %2
  %r3 = result 0 of %3
  %4 = pdl.operation "arith.subi"(%r2, %r3 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  rewrite %4 {
    %5 = pdl.operation "arith.subi"(%v1, %v0 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    replace %4 with %5
  }
}
