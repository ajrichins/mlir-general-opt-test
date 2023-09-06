// RUN: python LitRunOpt.py %s | filecheck %s

builtin.module {
  func.func @test_433_trunci_base(%arg0 : i64) -> i8 {
    %0 = arith.trunci %arg0 : i64 to i32
    %1 = arith.trunci %0 : i32 to i8
    // CHECK: %1 = arith.trunci %arg0 : i64 to i8
    func.return %1 : i8
  }
  func.func @test_433_trunci_type(%arg0_1 : i999) -> i2 {
    %2 = arith.trunci %arg0_1 : i999 to i433
    %3 = arith.trunci %2 : i433 to i2
    // CHECK: %3 = arith.trunci %arg0_1 : i999 to i2
    func.return %3 : i2
  }
}