builtin.module {
  pdl.pattern @opt0 : benefit(2) {
    %type1 = pdl.type : i32
    %av1 = pdl.attribute
    pdl.apply_native_constraint "empty_kb"(%av1 : !pdl.attribute)
    %1 = pdl.operation "arith.constant" {"kb" = %av1} -> (%type1 : !pdl.type)
    pdl.rewrite %1 {
      %a = pdl.attribute = 0 : i32
      %c4 = pdl.operation "arith.constant" {"value" = %a}-> (%type1 : !pdl.type)
      pdl.replace %1 with %c4
    }
  }
}