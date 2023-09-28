// RUN: TESTOPT

builtin.module {
  func.func @test_123_base(%arg0 : i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.divsi %arg0, %c1_i32 : i32
    func.return %0 : i32
    // CHECK: func.return %arg0 : i32
  }
  func.func @test_123_false(%arg0_1 : i32) -> i32 {
    %c3_i32 = arith.constant 3 : i32
    %0 = arith.divsi %arg0_1, %c3_i32 : i32
    func.return %0 : i32
    // CHECK: func.return %0 : i32
  }
}