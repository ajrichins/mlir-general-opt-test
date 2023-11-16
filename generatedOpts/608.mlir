pdl.pattern @opt0 : benefit(1) {
  %type0 = pdl.type
  %newvar0 = pdl.operand : %type0
  %av1 = pdl.attribute = 1
  %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
  %r1 = pdl.result 0 of %1
  %2 = pdl.operation "arith.andi"(%newvar0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
  %av0 = pdl.attribute = 0
  %3 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
  %uint1 = pdl.type : i1
  %r2 = pdl.result 0 of %2
  %r3 = pdl.result 0 of %3
  %4 = pdl.operation "arith.cmpi"(%r2, %r3 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
  pdl.rewrite %4 {
    %5 = pdl.operation "arith.trunci"(%newvar0 : !pdl.value) -> (%uint1 : !pdl.type)
    pdl.replace %4 with %5
  }
}
pdl.pattern @opt0_com_1 : benefit(1) {
    %type0 = pdl.type
    %newvar0 = pdl.operand : %type0
    %av1 = pdl.attribute = 1
    %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
    %r1 = pdl.result 0 of %1
    %2 = pdl.operation "arith.andi"(%r1, %newvar0 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
    %av0 = pdl.attribute = 0
    %3 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
    %uint1 = pdl.type : i1
    %r2 = pdl.result 0 of %2
    %r3 = pdl.result 0 of %3
    %4 = pdl.operation "arith.cmpi"(%r2, %r3 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
    pdl.rewrite %4 {
      %5 = pdl.operation "arith.trunci"(%newvar0 : !pdl.value) -> (%uint1 : !pdl.type)
      pdl.replace %4 with %5
    }
}
pdl.pattern @opt0_com_2 : benefit(1) {
      %type0 = pdl.type
      %newvar0 = pdl.operand : %type0
      %av1 = pdl.attribute = 1
      %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
      %r1 = pdl.result 0 of %1
      %2 = pdl.operation "arith.andi"(%newvar0, %r1 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
      %av0 = pdl.attribute = 0
      %3 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
      %uint1 = pdl.type : i1
      %r2 = pdl.result 0 of %2
      %r3 = pdl.result 0 of %3
      %4 = pdl.operation "arith.cmpi"(%r3, %r2 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
      pdl.rewrite %4 {
        %5 = pdl.operation "arith.trunci"(%newvar0 : !pdl.value) -> (%uint1 : !pdl.type)
        pdl.replace %4 with %5
      }
}
pdl.pattern @opt0_com_3 : benefit(1) {
        %type0 = pdl.type
        %newvar0 = pdl.operand : %type0
        %av1 = pdl.attribute = 1
        %1 = pdl.operation "arith.constant" {"value" = %av1} -> (%type0 : !pdl.type)
        %r1 = pdl.result 0 of %1
        %2 = pdl.operation "arith.andi"(%r1, %newvar0 : !pdl.value, !pdl.value) -> (%type0 : !pdl.type)
        %av0 = pdl.attribute = 0
        %3 = pdl.operation "arith.constant" {"value" = %av0} -> (%type0 : !pdl.type)
        %uint1 = pdl.type : i1
        %r2 = pdl.result 0 of %2
        %r3 = pdl.result 0 of %3
        %4 = pdl.operation "arith.cmpi"(%r3, %r2 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
        pdl.rewrite %4 {
          %5 = pdl.operation "arith.trunci"(%newvar0 : !pdl.value) -> (%uint1 : !pdl.type)
          pdl.replace %4 with %5
        }
}
