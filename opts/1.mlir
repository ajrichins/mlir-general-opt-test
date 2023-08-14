module {
    pdl.pattern @opt1 : benefit(1) {
    %0 = type
    %1 = operand
    // need to figure out how to restrict these operands to contant like operations
    %2 = operation "arith.constant" -> (%0 : !pdl.type)
    %3 = operation "arith.constant" -> (%0 : !pdl.type)
    
    %4 = pdl.operation "arith.addi"(%1, %2 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
    %5 = result 0 of %4
    %6 = pdl.operation "arith.addi"(%3, %5 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
    rewrite {
      %7 = pdl.operation "arith.addi"(%3, %2 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
      %8 = result 0 of %7
      %9 = pdl.operation "arith.addi"(%1, %8 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
      replace %4 with %7
      //replace %5 with %8
      replace %6 with %9
    }
  }
}