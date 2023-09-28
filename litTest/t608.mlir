// RUN: TESTOPT

builtin.module {
  func.func @test_608_base(%arg0 : i64) -> i1 {
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = arith.andi %arg0, %c1_i64 : i64
    %1 = arith.cmpi ne, %0, %c0_i64 : i64
    // CHECK: %1 = arith.trunci %arg0 : i64 to i1
    func.return %1 : i1
  }
  func.func @test_608_false(%arg0_1 : i64) -> i1 {
    %c1_i64_1 = arith.constant 1 : i64
    %2 = arith.andi %arg0_1, %c1_i64_1 : i64
    %3 = arith.cmpi ne, %2, %c1_i64_1 : i64
    // CHECK: %3 = arith.cmpi ne, %2, %c1_i64_1 : i64
    func.return %3 : i1
  }
  func.func @test_608_wrong_predicate(%arg0_3 : i64) -> i1 {
    %c0_i64_1 = arith.constant 0 : i64
    %c1_i64_2 = arith.constant 1 : i64
    %6 = arith.andi %arg0_3, %c1_i64_2 : i64
    %7 = arith.cmpi eq, %6, %c0_i64_1 : i64
    // CHECK: %7 = arith.cmpi eq, %6, %c0_i64_1 : i64
    func.return %7 : i1
  }
  func.func @test_60_unknown(%arg0_4 : i64, %arg1 : i64) -> i1 {
    %c1_i64_3 = arith.constant 1 : i64
    %8 = arith.andi %arg0_4, %c1_i64_3 : i64
    %9 = arith.cmpi ne, %8, %arg1 : i64
    // CHECK: %9 = arith.cmpi ne, %8, %arg1 : i64
    func.return %9 : i1
  }
  func.func @test_608_com(%arg0_5 : i64) -> i1 {
    %c0_i64_2 = arith.constant 0 : i64
    %c1_i64_4 = arith.constant 1 : i64
    %10 = arith.andi %c1_i64_4, %arg0_5 : i64
    %11 = arith.cmpi ne, %10, %c0_i64_2 : i64
    // CHECK: %11 = arith.trunci %arg0_5 : i64 to i1
    func.return %11 : i1
  }
}