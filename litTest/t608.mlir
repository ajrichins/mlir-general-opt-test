// RUN: python LitRunOpt.py %s | filecheck %s

builtin.module {
  func.func @test_608_base(%arg0 : i32) -> i1 {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.andi %arg0, %c1_i32 : i32
    %1 = arith.cmpi ne, %0, %c0_i32 : i32
    // CHECK: %1 = arith.trunci %arg0 : i32 to i1
    func.return %1 : i1
  }
  func.func @test_608_false(%arg0_1 : i32) -> i1 {
    %c1_i32_1 = arith.constant 1 : i32
    %2 = arith.andi %arg0_1, %c1_i32_1 : i32
    %3 = arith.cmpi ne, %2, %c1_i32_1 : i32
    // CHECK: %3 = arith.cmpi ne, %2, %c1_i32_1 : i32
    func.return %3 : i1
  }
  func.func @test_608_type(%arg0_2 : i64) -> i1 {
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %4 = arith.andi %arg0_2, %c1_i64 : i64
    %5 = arith.cmpi ne, %4, %c0_i64 : i64
    // CHECK: %5 = arith.trunci %arg0_2 : i64 to i1
    func.return %5 : i1
  }
  func.func @test_608_wrong_predicate(%arg0_3 : i32) -> i1 {
    %c0_i32_1 = arith.constant 0 : i32
    %c1_i32_2 = arith.constant 1 : i32
    %6 = arith.andi %arg0_3, %c1_i32_2 : i32
    %7 = arith.cmpi eq, %6, %c0_i32_1 : i32
    // CHECK: %7 = arith.cmpi eq, %6, %c0_i32_1 : i32
    func.return %7 : i1
  }
  func.func @test_60_unknown(%arg0_4 : i32, %arg1 : i32) -> i1 {
    %c1_i32_3 = arith.constant 1 : i32
    %8 = arith.andi %arg0_4, %c1_i32_3 : i32
    %9 = arith.cmpi ne, %8, %arg1 : i32
    // CHECK: %9 = arith.cmpi ne, %8, %arg1 : i32
    func.return %9 : i1
  }
  func.func @test_608_com(%arg0_5 : i32) -> i1 {
    %c0_i32_2 = arith.constant 0 : i32
    %c1_i32_4 = arith.constant 1 : i32
    %10 = arith.andi %c1_i32_4, %arg0_5 : i32
    %11 = arith.cmpi ne, %10, %c0_i32_2 : i32
    // CHECK: %11 = arith.trunci %arg0_5 : i32 to i1
    func.return %11 : i1
  }
}