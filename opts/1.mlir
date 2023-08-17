module {
    pdl.pattern @opt1 : benefit(1) {
    %0 = type
    %1 = operand
    %2 = operation "arith.constant" -> (%0 : !pdl.type)
    %3 = operation "arith.constant" -> (%0 : !pdl.type)
    %r2 = result 0 of %2
    %r3 = result 0 of %3
    
    %4 = pdl.operation "arith.addi"(%1, %r2 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
    %5 = result 0 of %4
    %6 = pdl.operation "arith.addi"(%r3, %5 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
    rewrite %6{
      %7 = pdl.operation "arith.addi"(%r3, %r2 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
      %8 = result 0 of %7
      %9 = pdl.operation "arith.addi"(%1, %8 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
      //replace %4 with %7
      replace %6 with %9
    }
  }
}