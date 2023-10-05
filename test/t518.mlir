builtin.module {
  func.func @test_518_false2(%arg0: i64, %arg1: i64) -> i64 {
    %4 = arith.subi %arg1, %arg0 : i64
    %5 = arith.subi %arg0, %4 : i64
    func.return %5 : i64
  }
}