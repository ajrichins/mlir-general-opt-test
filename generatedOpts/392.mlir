pdl.pattern @opt0 : benefit(1) {
  %v0 = operand : i16
  %uint32 = type : i32
  %1 = pdl.operation "arith.extsi"(%v0 : !pdl.value) -> (%uint32 : !pdl.type)
  %uint64 = type : i64
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.extsi"(%r1 : !pdl.value) -> (%uint64 : !pdl.type)
  rewrite %2 {
    %3 = pdl.operation "arith.extsi"(%v0 : !pdl.value) -> (%uint64 : !pdl.type)
    replace %2 with %3
  }
}
