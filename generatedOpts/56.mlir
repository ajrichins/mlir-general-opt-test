pdl.pattern @opt0 : benefit(1) {
  %v0 = operand
  %v1 = operand
  %0 = attribute = 0 : i32
  %uint32 = type : i32
  %2 = operation "arith.constant" {"value" = %0} -> (%uint32 : !pdl.type)
  %3 = pdl.operation "arith.subi"(%v0, %v1 : !pdl.value, !pdl.value) -> (%uint32 : !pdl.type)
  %r2 = result 0 of %2
  %r3 = result 0 of %3
  %4 = pdl.operation "arith.subi"(%r2, %r3 : !pdl.value, !pdl.value) -> (%uint32 : !pdl.type)
  rewrite %4 {
    %5 = pdl.operation "arith.subi"(%v1, %v0 : !pdl.value, !pdl.value) -> (%uint32 : !pdl.type)
    replace %4 with %5
  }
}
