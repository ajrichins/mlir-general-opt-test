module{
    // (newvar0 & 1) != 0 => trunc(newvar0)
    // not doing any data flow analysis or inference. just using operands
    // also don't really understand this opt, doesn't seem valid
    pdl.pattern @opt608 : benefit(1) {
        %0 = type
        %14 = type : i1
        %1 = operand
        // not proper should be using constant like and value attributes, but they're not working
        %2 = attribute = 1 : i32
        %3 = operation "arith.constant" {"value" = %2} -> (%0 : !pdl.type)
        %4 = result 0 of %3
        %5 = attribute = 0 : i32
        %6 = operation "arith.constant" {"value" = %5} -> (%0 : !pdl.type)
        %7 = result 0 of %6

        %8 = operation "arith.andi" (%1, %4 : !pdl.value, !pdl.value) -> (%0 : !pdl.type)
        %9 = result 0 of %8
        %10 = attribute = 1 // ne predicate value
        %11 = operation "arith.cmpi" (%9, %7 : !pdl.value, !pdl.value) {"predicate" = %10} -> (%14 : !pdl.type)

        rewrite %11 {
            // what width do I trunc to?
            %12 = operation "arith.trunci"(%1 : !pdl.value)  -> (%0 : !pdl.type)
            replace %11 with %12
        }
    }
}