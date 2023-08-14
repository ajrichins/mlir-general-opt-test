module {
  pdl.pattern @opt3 : benefit(1) {
    %0 = type
    %1 = operand
    // not proper should be using constant like and value attributes, but they're not working
    %4 = attribute = 0 : i32
    %5 = operation "arith.constant" {"value" = %4} -> (%0 : !pdl.type)
    %2 = result 0 of %5
    %3 = operation "arith.addi"(%1, %2 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
    rewrite %3 {
      replace %3 with(%1 : !pdl.value)
    }
  }
}