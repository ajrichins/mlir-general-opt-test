pdl.pattern @opt0 : benefit(1) {
  %v0 = operand
  %0 = attribute = 0 : i64
  %64 = type : i64
  %1 = operation "arith.constant" {"value" = %0} -> (%64 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.subi"(%v0, %r1 : !pdl.value, !pdl.value) -> (%64 : !pdl.type)
  rewrite %2 {
    replace %2 with (%v0 : !pdl.value)
  }
}
