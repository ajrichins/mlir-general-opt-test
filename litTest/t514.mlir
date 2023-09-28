// RUN: TESTOPT

builtin.module {
  func.func @test_514_base(%arg0: i64) -> i64 {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.subi %arg0, %c0_i64 : i64
    func.return %0 : i64
    // CHECK: func.return %arg0 : i64
  }
  func.func @test_514_false(%arg0: i64) -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %0 = arith.subi %arg0, %c1_i64 : i64
    func.return %0 : i64
    //CHECK: func.return %0 : i64
  }
  func.func @test_514_Com(%arg0: i64) -> i64 {
    %c1_i64 = arith.constant 0 : i64
    %0 = arith.subi %c1_i64, %arg0 : i64
    func.return %0 : i64
    // CHECK: func.return %arg0_3 : i64
  }
}