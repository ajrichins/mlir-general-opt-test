// RUN: TESTOPT

builtin.module {
  func.func @test_392_trunci_base(%arg0 : i16) -> i64 {
    %0 = arith.extsi %arg0 : i16 to i32
    %1 = arith.extsi %0 : i32 to i64
    // CHECK: %1 = arith.extsi %arg0 : i16 to i64
    func.return %1 : i64
  }
  func.func @test_392_trunci_constant() -> i64 {
    %c3_i16 = arith.constant 3 : i16
    %2 = arith.extsi %c3_i16 : i16 to i32
    %3 = arith.extsi %2 : i32 to i64
    //CHECK: %3 = arith.extsi %c3_i16 : i16 to i64
    func.return %3 : i64
  }
}