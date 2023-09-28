// RUN: TESTOPT

builtin.module {
  func.func @test_433_trunci_base(%arg0 : i64) -> i8 {
    %0 = arith.trunci %arg0 : i64 to i32
    %1 = arith.trunci %0 : i32 to i8
    // CHECK: %1 = arith.trunci %arg0 : i64 to i8
    func.return %1 : i8
  }
  
}