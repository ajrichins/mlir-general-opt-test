// RUN: python LitRunOpt.py %s | filecheck %s

builtin.module {
  func.func @test_56_base(%arg0 : i32, %arg1 : i32) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.subi %arg0, %arg1 : i32
    %1 = arith.subi %c0_i32, %0 : i32
    // CHECK: %1 = arith.subi %arg1, %arg0 : i32
    func.return %1 : i32
  }
  func.func @test_56_false(%arg0_1 : i32, %arg1_1 : i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %2 = arith.subi %arg0_1, %arg1_1 : i32
    %3 = arith.subi %c1_i32, %2 : i32
    // CHECK: %3 = arith.subi %c1_i32, %2 : i32
    func.return %3 : i32
  }
  func.func @test_56_type(%arg0_2 : i64, %arg1_2 : i64) -> i64 {
    %c0_i32_1 = arith.constant 0 : i64
    %4 = arith.subi %arg0_2, %arg1_2 : i64
    %5 = arith.subi %c0_i32_1, %4 : i64
    // CHECK: %1 = arith.subi %arg1_2, %arg0_2 : i32
    func.return %5 : i64
  }
}