// RUN: python LitRunOpt.py %s | filecheck %s

builtin.module {
  func.func @test_497_base(%arg0 : i64) -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %0 = arith.addi %arg0, %c1_i64 : i64
    %1 = arith.subi %0, %c1_i64 : i64
    func.return %1 : i64
    // CHECK: func.return %arg0 : i64
  }
  func.func @test_497_com(%arg0_1 : i64) -> i64 {
    %c1_i64_1 = arith.constant 1 : i64
    %2 = arith.addi %c1_i64_1, %arg0_1 : i64
    %3 = arith.subi %2, %c1_i64_1 : i64
    func.return %3 : i64
    // CHECK: func.return %arg0_1 : i64
  }
  func.func @test_497_type(%arg0_2 : i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %4 = arith.addi %arg0_2, %c1_i32 : i32
    %5 = arith.subi %4, %c1_i32 : i32
    func.return %5 : i32
    // CHECK: func.return %arg0_2 : i32
  }
  func.func @test_497_need_to_work(%arg0_3 : i64) -> i64 {
    %c1_i64_2 = arith.constant 1 : i64
    %6 = arith.addi %arg0_3, %c1_i64_2 : i64
    %c1_i64_0 = arith.constant 1 : i64
    %7 = arith.subi %6, %c1_i64_0 : i64
    func.return %7 : i64
    // CHECK: func.return %arg0_3 : i64
  }
}