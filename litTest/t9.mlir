// RUN: TESTOPT

builtin.module{
    func.func @opt9PositiveBase(%arg0: i64, %arg1: i64) -> i64 {
        %0 = arith.subi %arg0, %arg1 : i64
        %1 = arith.addi %arg1, %0 : i64
        func.return %1 : i64
        // CHECK: func.return %arg0 : i64
    }
    func.func @opt9PositiveCom(%arg0: i64, %arg1: i64) -> i64 {
        %0 = arith.subi %arg0, %arg1 : i64
        %1 = arith.addi %0, %arg0 : i64
        func.return %1 : i64
        // CHECK: func.return %arg0_1 : i64
    }
    func.func @opt9false1(%arg0: i64, %arg1: i64) -> i64 {
        %0 = arith.subi %arg1, %arg0 : i64
        %1 = arith.addi %0, %arg0 : i64
        func.return %1 : i64
        // CHECK: func.return %1 : i64
    }
}