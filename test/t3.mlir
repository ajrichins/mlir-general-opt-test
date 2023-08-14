module {
    // opt 3 positive
  func.func @test_3_base(%arg0: i32) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.addi %arg0, %c0_i32 : i32
    return %0 : i32
  }
  func.func @test_3_false(%arg0: i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.addi %arg0, %c1_i32 : i32
    return %0 : i32
  }
}