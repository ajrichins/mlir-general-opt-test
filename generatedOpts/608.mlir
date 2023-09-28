pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %newvar0 = operand : %type0
  %av1 = pdl.attribute = 1
  %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.andi"(%newvar0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %av0 = pdl.attribute = 0
  %3 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
  %uint1 = type : i1
  %r2 = result 0 of %2
  %r3 = result 0 of %3
  %4 = pdl.operation "arith.cmpi"(%r2, %r3 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
  rewrite %4 {
    %5 = pdl.operation "arith.trunci"(%newvar0 : !pdl.value) -> (%uint1 : !pdl.type)
    replace %4 with %5
  }
}
