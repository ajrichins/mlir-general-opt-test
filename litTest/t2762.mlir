// RUN: TESTOPT

builtin.module {
    func.func @test_opt_2762_base(%arg0 : i32) -> i1{
        %11 = arith.constant 24 : i32
        %0 = arith.cmpi ne, %arg0, %11 : i32
        %1 = arith.constant 1 : i1
        %2 = arith.xori %1, %0 : i1
        func.return %2 : i1
    }
}