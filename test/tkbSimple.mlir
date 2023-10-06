builtin.module {
    %0 = arith.constant 0 : i64
    %1 = arith.constant 1 : i64
    %2 = "arith.addi"(%0, %1) {kb="????"}: (i64, i64) -> i64
}
