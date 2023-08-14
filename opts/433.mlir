module {
  // Opt : 433 integer
  // trunc(trunc(newvar0)) => trunc(newvar0)
  pdl.pattern @opt433 : benefit(1) {
    %0 = type
    %1 = type
    %2 = operand
    %3 = operation "arith.trunci"(%2 : !pdl.value)  -> (%0 : !pdl.type)
    %4 = result 0 of %3
    %5 = operation "arith.trunci"(%4 : !pdl.value)  -> (%1 : !pdl.type)
    rewrite %5 {
      %6 = operation "arith.trunci"(%2 : !pdl.value)  -> (%1 : !pdl.type)
      replace %5 with %6
      erase %3
    }
  }
}