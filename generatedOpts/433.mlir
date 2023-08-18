pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %newvar0 = operand : %type0
  %type1 = type
  %1 = pdl.operation "arith.trunci"(%newvar0 : !pdl.value) -> (%type1 : !pdl.type)
  %type2 = type
  %r1 = result 0 of %1
  %2 = pdl.operation "arith.trunci"(%r1 : !pdl.value) -> (%type2 : !pdl.type)
  rewrite %2 {
    %3 = pdl.operation "arith.trunci"(%newvar0 : !pdl.value) -> (%type2 : !pdl.type)
    replace %2 with %3
  }
}
