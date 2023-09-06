// RUN: python LitRunOpt.py %s | filecheck %s

builtin.module {
  func.func @test_60_base(%arg0: i32) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.addi %arg0, %c0_i32 : i32
    return %0 : i32
  }
  func.func @test_60_false(%arg0: i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.addi %arg0, %c1_i32 : i32
    return %0 : i32
  }
}