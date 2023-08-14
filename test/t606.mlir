module {
  func.func @test_606_base(%arg0: i32) -> i1 {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 2 : i32
    %0 = arith.remsi %arg0, %c1_i32 : i32
    %1 = arith.cmpi ne, %0, %c0_i32 : i32
    return %1 : i1
  }
  func.func @test_606_false(%arg0: i32) -> i1 {
    %c1_i32 = arith.constant 2 : i32
    %0 = arith.remsi %arg0, %c1_i32 : i32
    %1 = arith.cmpi ne, %0, %c1_i32 : i32
    return %1 : i1
  }
  func.func @test_606_unknown(%arg0: i32, %arg1: i32) -> i1 {
    %c1_i32 = arith.constant 2 : i32
    %0 = arith.remsi %arg0, %c1_i32 : i32
    %1 = arith.cmpi ne, %0, %arg1 : i32
    return %1 : i1
  }
}