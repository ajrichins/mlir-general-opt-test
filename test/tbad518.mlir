builtin.module {
  func.func @test_518_base(%arg0: i64) -> i64 {
    %0 = arith.constant 10 : i64
    %2 = arith.subi %arg0, %0 : i64
    func.return %2 : i64
  }
  func.func @test_518_false(%arg0: i64) -> i64 {
    %0 = arith.constant 10 : i64
    %2 = arith.subi %0, %arg0 : i64
    func.return %2 : i64
  }
}