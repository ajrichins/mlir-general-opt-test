// RUN: python LitRunOpt.py %s | filecheck %s

builtin.module {
    func.func @test_45_base(%arg0: i64) -> i64 {
        %c-1_i64 = arith.constant -1 : i64
        // %1 = arith.constant 18446744073709551615 : i64
        %0 = arith.xori %arg0, %c-1_i64 : i64
        %c1_i64 = arith.constant 1 : i64
        %1 = arith.addi %0, %c1_i64 : i64
        // CHECK: %1 = arith.muli %arg0, %c-1_i64 : i64
        func.return %1 : i64
    }
    func.func @test_45_base_com1(%arg0: i64) -> i64 {
        %c-1_i64 = arith.constant -1 : i64
        %0 = arith.xori %c-1_i64, %arg0 : i64
        %c1_i64 = arith.constant 1 : i64
        %1 = arith.addi %0, %c1_i64 : i64
        // CHECK: %3 = arith.muli %arg0_1, %c-1_i64_1 : i64
        func.return %1 : i64
    }
    func.func @test_45_base_com2(%arg0: i64) -> i64 {
        %c-1_i64 = arith.constant -1 : i64
        %0 = arith.xori %arg0, %c-1_i64 : i64
        %c1_i64 = arith.constant 1 : i64
        %1 = arith.addi %c1_i64, %0 : i64
        // CHECK: %5 = arith.muli %arg0_2, %c-1_i64_2 : i64
        func.return %1 : i64
    }
    func.func @test_45_type(%arg0: i32) -> i32 {
        %c-1_i32 = arith.constant -1 : i32
        // %1 = arith.constant 4294967295 : i32
        %0 = arith.xori %arg0, %c-1_i32 : i32
        %c1_i32 = arith.constant 1 : i32
        %1 = arith.addi %0, %c1_i32 : i32
        // CHECK: %1 = arith.muli %arg0, %c-1_i32 : i32
        func.return %1 : i32
    }
}