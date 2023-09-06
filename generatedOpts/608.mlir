pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %newvar0 = operand : %type0
  %a0 = attribute = 1 : i32
  %1 = operation "arith.constant" {"value" = %a0} -> (%type0 : !pdl.type)
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.andi"(%newvar0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %a1 = attribute = 0 : i32
  %3 = operation "arith.constant" {"value" = %a1} -> (%type0 : !pdl.type)
  %uint1 = type : i1
  %r2 = result 0 of %2
  %r3 = result 0 of %3
  %a2 = attribute = 1
  %4 = operation "arith.cmpi"(%r2, %r3 : !pdl.value, !pdl.value) {"predicate" = %a2} -> (%uint1 : !pdl.type)
  rewrite %4 {
    %5 = pdl.operation "arith.trunci"(%newvar0 : !pdl.value) -> (%uint1 : !pdl.type)
    replace %4 with %5
  }
}
