module {
    // v0 /s 1 => v0
    // any reason not for unsigned? kinda dumb question I just need to think about it more
    pdl.pattern @opt123 : benefit(1) {
        %0 = type
        %1 = operand
        // not proper way need to learn better way
        %3 = attribute = 1 : i32
        %4 = operation "arith.constant" {"value" = %3} -> (%0 : !pdl.type)
        %5 = result 0 of %4

        %6 = operation "arith.divsi"(%1, %5 : !pdl.value, !pdl.value)  -> (%0 : !pdl.type)
        rewrite %6 {
            replace %6 with (%1 : !pdl.value)
        }
    }
}