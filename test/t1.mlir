module {
    // opt 1 positive
  func.func @test_1_base(%arg0: i32) -> i32 {
    %c4_i32 = arith.constant 4 : i32
    %c5_i32 = arith.constant 5 : i32
    %0 = arith.addi %arg0, %c4_i32 : i32
    %1 = arith.addi %c5_i32, %0 : i32
    return %1 : i32
  }
}
