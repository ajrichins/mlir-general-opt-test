// RUN: TESTOPT

builtin.module {
  func.func @test_512_base(%arg0: i64) -> i64 {
    %0 = arith.constant 7 : i64
    %1 = arith.addi %arg0, %0 : i64
    %2 = arith.subi %2, %0 : i64
    func.return %2 : i64
    // CHECK: func.return %arg1 : i64
  }
}