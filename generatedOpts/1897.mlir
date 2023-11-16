pdl.pattern @opt0 : benefit(4) {
  %uint1 = pdl.type : i1
  %newvar12 = pdl.operand : %uint1
  %type1 = pdl.type
  %av1 = pdl.attribute = 1
  %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type1 : !pdl.type)
  %av0 = pdl.attribute = 0
  %2 = pdl.operation "arith.constant" {"value" = %av0} -> (%type1 : !pdl.type)
  %r1 = pdl.result 0 of %1
  %r2 = pdl.result 0 of %2
  %3 = pdl.operation "arith.select"(%newvar12, %r1, %r2 : !pdl.value, !pdl.value, !pdl.value) -> (%type1 : !pdl.type)
  %type2 = pdl.type
  %r3 = pdl.result 0 of %3
  %4 = pdl.operation "arith.trunci"(%r3 : !pdl.value) -> (%type2 : !pdl.type)
  %5 = pdl.operation "arith.constant" {"value" = %av1} -> (%type2 : !pdl.type)
  %r4 = pdl.result 0 of %4
  %r5 = pdl.result 0 of %5
  %6 = pdl.operation "arith.andi"(%r4, %r5 : !pdl.value, !pdl.value) -> (%type2 : !pdl.type)
  pdl.rewrite %6 {
    %7 = pdl.operation "arith.extui"(%newvar12 : !pdl.value) -> (%type2 : !pdl.type)
    pdl.replace %6 with %7
  }
}
pdl.pattern @opt0_com_1 : benefit(4) {
    %uint1 = pdl.type : i1
    %newvar12 = pdl.operand : %uint1
    %type1 = pdl.type
    %av1 = pdl.attribute = 1
    %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type1 : !pdl.type)
    %av0 = pdl.attribute = 0
    %2 = pdl.operation "arith.constant" {"value" = %av0} -> (%type1 : !pdl.type)
    %r1 = pdl.result 0 of %1
    %r2 = pdl.result 0 of %2
    %3 = pdl.operation "arith.select"(%newvar12, %r1, %r2 : !pdl.value, !pdl.value, !pdl.value) -> (%type1 : !pdl.type)
    %type2 = pdl.type
    %r3 = pdl.result 0 of %3
    %4 = pdl.operation "arith.trunci"(%r3 : !pdl.value) -> (%type2 : !pdl.type)
    %5 = pdl.operation "arith.constant" {"value" = %av1} -> (%type2 : !pdl.type)
    %r4 = pdl.result 0 of %4
    %r5 = pdl.result 0 of %5
    %6 = pdl.operation "arith.andi"(%r5, %r4 : !pdl.value, !pdl.value) -> (%type2 : !pdl.type)
    pdl.rewrite %6 {
      %7 = pdl.operation "arith.extui"(%newvar12 : !pdl.value) -> (%type2 : !pdl.type)
      pdl.replace %6 with %7
    }
}
