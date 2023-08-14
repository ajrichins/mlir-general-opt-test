module {
    // Opt : 392
    // sext(sext(v0)) => sext(v0)
    pdl.pattern @opt392 : benefit(1) {
        %0 = type
        %6 = type
        %1 = operand
        %2 = operation "arith.extsi" (%1 : !pdl.value) -> (%0 : !pdl.type)
        %3 = result 0 of %2
        %4 = operation "arith.extsi" (%3 : !pdl.value) -> (%6 : !pdl.type)
        rewrite %4 {
            %5 = operation "arith.extsi" (%1 : !pdl.value) -> (%6 : !pdl.type)
            replace %4 with %5
        }
    }
}