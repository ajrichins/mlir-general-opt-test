module {
    // opt 3 positive
  func.func @test_3_base(%arg0: i64) -> i64 {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.addi %arg0, %c0_i64 : i64
    return %0 : i64
  }
  func.func @test_3_false(%arg0: i64) -> i64 {
    %c1_i64 = arith.constant 1 : i64
    %0 = arith.addi %arg0, %c1_i64 : i64
    return %0 : i64
  }
}