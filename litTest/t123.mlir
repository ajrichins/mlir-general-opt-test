// RUN: python LitRunOpt.py %s | filecheck %s

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
  func.func @test_123_type(%arg0_2 : i64) -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %2 = arith.divsi %arg0_2, %c1_i64 : i64
    func.return %2 : i64
    // CHECK: func.return %arg0_2 : i64
  }
}