pdl.pattern @opt0 : benefit(5) {
  %v0 = operand
  %0 = attribute = 1 : i32
  %32 = type : i32
  %1 = operation "arith.constant" {"value" = %0} -> (%32 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.divsi"(%v0, %r1 : !pdl.value, !pdl.value) -> (%32 : !pdl.type)
  rewrite %2 {
    replace %2 with (%v0 : !pdl.value)
  }
}
