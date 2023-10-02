
builtin.module {
  func.func @test_518_false3(%arg0: i64) -> i64 {
    %6 = arith.constant 2 : i64
    %7 = arith.subi %6, %arg0 : i64
    %8 = arith.subi %arg0, %7 : i64
    func.return %8 : i64
    //CHECK: func.return %1 : i64
  }
}