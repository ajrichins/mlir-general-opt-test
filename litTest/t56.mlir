// RUN: TESTOPT

builtin.module {
  func.func @test_56_base(%arg0 : i64, %arg1 : i64) -> i64 {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.subi %arg0, %arg1 : i64
    %1 = arith.subi %c0_i64, %0 : i64
    // CHECK: %1 = arith.subi %arg1, %arg0 : i64
    func.return %1 : i64
  }
  func.func @test_56_false(%arg0_1 : i64, %arg1_1 : i64) -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %2 = arith.subi %arg0_1, %arg1_1 : i64
    %3 = arith.subi %c1_i64, %2 : i64
    // CHECK: %3 = arith.subi %c1_i64, %2 : i64
    func.return %3 : i64
  }
  func.func @test_56_false_com(%arg0 : i64, %arg1 : i64) -> i64 {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.subi %arg0, %arg1 : i64
    %1 = arith.subi %0, %c0_i64 : i64
    // CHECK: %5 = arith.subi %4, %c0_i64_1 : i64
    func.return %1 : i64
  }
}