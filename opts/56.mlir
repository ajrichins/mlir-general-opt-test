module {
    // 0 - (v0 - v1) => v1 - v0
    // confused on infer step and what that means
    pdl.pattern @opt56 : benefit(1) {
        %0 = type
        %1 = operand
        %2 = operand
        // not proper should be using constant like and value attributes, but they're not working
        %3 = attribute = 0 : i32
        %4 = operation "arith.constant" {"value" = %3} -> (%0 : !pdl.type)
        %5 = result 0 of %4

        %6 = operation "arith.subi"(%1, %2 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
        %7 = result 0 of %6
        %8 = operation "arith.subi"(%5, %7 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
        rewrite %8 {
            %9 = operation "arith.subi"(%2, %1 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
            replace %8 with %9
        }
    }
}