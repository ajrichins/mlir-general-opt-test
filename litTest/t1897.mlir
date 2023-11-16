// RUN: TESTOPT

builtin.module {
    func.func @test_1897_base(%arg0 : i1) -> i16 {
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %0 = arith.select %arg0, %c1_i32, %c0_i32 : i32
        %1 = arith.trunci %0 : i32 to i16
        %c1_i16 = arith.constant 1 : i16
        %2 = arith.andi %c1_i16, %1 : i16
        func.return %2 : i16
    }

}