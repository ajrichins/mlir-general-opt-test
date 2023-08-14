module {
  pdl.pattern @opt60 : benefit(1) {
    %0 = type
    %1 = operand
    //not proper way to do this, use constant like attribute
    %4 = attribute = 0 : i32
    %5 = operation "arith.constant" {"value" = %4} -> (%0 : !pdl.type)
    %2 = result 0 of %5
    %3 = operation "arith.subi"(%1, %2 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
    rewrite %3 {
      replace %3 with(%1 : !pdl.value)
    }
  }
}