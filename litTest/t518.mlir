// RUN: TESTOPT

builtin.module {
  func.func @test_518_base(%arg0: i64, %arg1: i64) -> i64 {
    %0 = arith.subi %arg0, %arg1 : i64
    %1 = arith.subi %arg0, %0 : i64
    func.return %1 : i64
    // CHECK: func.return %arg1 : i64
  }
  func.func @test_518_false1(%arg0: i64, %arg1: i64) -> i64 {
    %2 = arith.subi %arg0, %arg1 : i64
    %3 = arith.subi %2, %arg0 : i64
    func.return %3 : i64
    //CHECK: func.return %3 : i64
  }
  func.func @test_518_false4(%arg0: i64, %arg1: i64) -> i64 {
    %2 = arith.subi %arg1, %arg0 : i64
    %3 = arith.subi %2, %arg0 : i64
    func.return %3 : i64
    //CHECK: func.return %3 : i64
  }
  func.func @test_518_false2(%arg0: i64, %arg1: i64) -> i64 {
    %4 = arith.subi %arg1, %arg0 : i64
    %5 = arith.subi %arg0, %4 : i64
    func.return %5 : i64
    //CHECK: func.return %1 : i64
  }
  func.func @test_518_false3(%arg0: i64) -> i64 {
    %6 = arith.constant 2 : i64
    %7 = arith.subi %6, %arg0 : i64
    %8 = arith.subi %arg0, %7 : i64
    func.return %8 : i64
    //CHECK: func.return %1 : i64
  }
}