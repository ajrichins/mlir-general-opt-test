// RUN: python LitRunOpt.py %s | filecheck %s

builtin.module {
  func.func @test_606_base(%arg0 : i32) -> i1 {
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = arith.remsi %arg0, %c2_i32 : i32
    %1 = arith.cmpi ne, %0, %c0_i32 : i32
    // CHECK: %1 = arith.trunci %arg0 : i32 to i1
    func.return %1 : i1
  }
  func.func @test_606_false(%arg0_1 : i32) -> i1 {
    %c2_i32_1 = arith.constant 2 : i32
    %2 = arith.remsi %arg0_1, %c2_i32_1 : i32
    %3 = arith.cmpi ne, %2, %c2_i32_1 : i32
    // CHECK: %3 = arith.cmpi ne, %2, %c2_i32_1 : i32
    func.return %3 : i1
  }
  func.func @test_606_unknown(%arg0_2 : i32, %arg1 : i32) -> i1 {
    %c2_i32_2 = arith.constant 2 : i32
    %4 = arith.remsi %arg0_2, %c2_i32_2 : i32
    %5 = arith.cmpi ne, %4, %arg1 : i32
    // CHECK: %5 = arith.cmpi ne, %4, %arg1 : i32
    func.return %5 : i1
  }
  func.func @test_606_type(%arg0_3 : i64) -> i1 {
    %c0_i64 = arith.constant 0 : i64
    %c2_i64 = arith.constant 2 : i64
    %6 = arith.remsi %arg0_3, %c2_i64 : i64
    %7 = arith.cmpi ne, %6, %c0_i64 : i64
    // CHECK: %7 = arith.trunci %arg0_3 : i64 to i1
    func.return %7 : i1
  }
}