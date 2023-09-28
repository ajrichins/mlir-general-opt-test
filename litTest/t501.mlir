// RUN: TESTOPT

builtin.module {
    func.func @test_501_base(%arg0_64 : i64) -> i64{
        %0 = arith.subi %arg0_64, %arg0_64 : i64
        // CHECK: %5 = arith.constant 0 : i64
        func.return %0 : i64
    }
    func.func @test_501_type(%arg0_32 : i32) -> i32{
        %1 = arith.subi %arg0_32, %arg0_32 : i32
        // CHECK: %6 = arith.constant 0 : i64
        func.return %1 : i32
    }
}