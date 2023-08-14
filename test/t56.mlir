module {
  func.func @test_56_base(%arg0: i32, %arg1: i32) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.subi %arg0, %arg1 : i32
    %1 = arith.subi %c0_i32, %0 : i32
    return %1 : i32
  }
  func.func @test_56_false(%arg0: i32, %arg1: i32) -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.subi %arg0, %arg1 : i32
    %1 = arith.subi %c1_i32, %0 : i32
    return %1 : i32
  }
}