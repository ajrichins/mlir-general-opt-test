pdl.pattern @opt0 : benefit(1) {
  %type0 = type
  %newvar0 = operand : %type0
  %symconst_1 = pdl.operation "arith.constant" -> (%type0 : !pdl.type)
  %uint1 = type : i1
  %rsymconst_1 = result 0 of %symconst_1
  %av1 = pdl.attribute = 1
  %2 = pdl.operation "arith.cmpi"(%newvar0, %rsymconst_1 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
  %3 = pdl.operation "arith.constant" {"value" = %av1} -> (%uint1 : !pdl.type)
  %r2 = result 0 of %2
  %r3 = result 0 of %3
  %4 = pdl.operation "arith.xori"(%r2, %r3 : !pdl.value, !pdl.value) -> (%uint1 : !pdl.type)
  rewrite %4 {
    %5 = pdl.operation "arith.cmpi"(%newvar0, %rsymconst_1 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
    replace %4 with %5
  }
}
pdl.pattern @opt0_com_1 : benefit(1) {
    %type0 = type
    %newvar0 = operand : %type0
    %symconst_1 = pdl.operation "arith.constant" -> (%type0 : !pdl.type)
    %uint1 = type : i1
    %rsymconst_1 = result 0 of %symconst_1
    %av1 = pdl.attribute = 1
    %2 = pdl.operation "arith.cmpi"(%rsymconst_1, %newvar0 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
    %3 = pdl.operation "arith.constant" {"value" = %av1} -> (%uint1 : !pdl.type)
    %r2 = result 0 of %2
    %r3 = result 0 of %3
    %4 = pdl.operation "arith.xori"(%r2, %r3 : !pdl.value, !pdl.value) -> (%uint1 : !pdl.type)
    rewrite %4 {
      %5 = pdl.operation "arith.cmpi"(%newvar0, %rsymconst_1 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
      replace %4 with %5
    }
}
pdl.pattern @opt0_com_2 : benefit(1) {
      %type0 = type
      %newvar0 = operand : %type0
      %symconst_1 = pdl.operation "arith.constant" -> (%type0 : !pdl.type)
      %uint1 = type : i1
      %rsymconst_1 = result 0 of %symconst_1
      %av1 = pdl.attribute = 1
      %2 = pdl.operation "arith.cmpi"(%newvar0, %rsymconst_1 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
      %3 = pdl.operation "arith.constant" {"value" = %av1} -> (%uint1 : !pdl.type)
      %r2 = result 0 of %2
      %r3 = result 0 of %3
      %4 = pdl.operation "arith.xori"(%r3, %r2 : !pdl.value, !pdl.value) -> (%uint1 : !pdl.type)
      rewrite %4 {
        %5 = pdl.operation "arith.cmpi"(%newvar0, %rsymconst_1 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
        replace %4 with %5
      }
}
pdl.pattern @opt0_com_3 : benefit(1) {
        %type0 = type
        %newvar0 = operand : %type0
        %symconst_1 = pdl.operation "arith.constant" -> (%type0 : !pdl.type)
        %uint1 = type : i1
        %rsymconst_1 = result 0 of %symconst_1
        %av1 = pdl.attribute = 1
        %2 = pdl.operation "arith.cmpi"(%rsymconst_1, %newvar0 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
        %3 = pdl.operation "arith.constant" {"value" = %av1} -> (%uint1 : !pdl.type)
        %r2 = result 0 of %2
        %r3 = result 0 of %3
        %4 = pdl.operation "arith.xori"(%r3, %r2 : !pdl.value, !pdl.value) -> (%uint1 : !pdl.type)
        rewrite %4 {
          %5 = pdl.operation "arith.cmpi"(%newvar0, %rsymconst_1 : !pdl.value, !pdl.value) {"predicate" = %av1} -> (%uint1 : !pdl.type)
          replace %4 with %5
        }
}
