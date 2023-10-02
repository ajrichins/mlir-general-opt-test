builtin.module {
  %c1_i64 = arith.constant 1 : i64
  %0 = arith.subi %c1_i64, %c1_i64 {knownBits = "0000"} : i64
  %1 = func.call @test_kb_param(%0) : (i64) -> i64
  func.func @test_kb_param(%arg0: i64) -> i64 {
    %c0_i64_0 = arith.constant 0 : i64
    %6 = arith.muli %arg0, %c0_i64_0 : i64
    return %6 : i64
  }
  %c0_i64 = arith.constant 0 : i64
  %2 = arith.muli %0, %c0_i64 : i64
  
  %3 = arith.subi %c1_i64, %c1_i64 {knownBits = "xxxx"} : i64
  %4 = func.call @test_kb_param2(%3) : (i64) -> i64
  func.func @test_kb_param2(%arg0: i64) -> i64 {
    %c0_i64_0 = arith.constant 0 : i64
    %6 = arith.muli %arg0, %c0_i64_0 : i64
    return %6 : i64
  }
  %5 = arith.muli %3, %c0_i64 : i64
}