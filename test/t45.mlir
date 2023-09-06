module {
    func.func @test_45_base(%arg0 : i64) -> i64 {
        %1 = arith.constant 18446744073709551615 : i64
        %2 = arith.xori %arg0, %1 : i64
        %3 = arith.constant 1 : i64
        %4 = arith.addi %2, %3 : i64
        func.return %4 : i64
    }
    func.func @test_45_base_com1(%arg0 : i64) -> i64 {
        %1 = arith.constant 18446744073709551615 : i64
        %2 = arith.xori %1, %arg0 : i64
        %3 = arith.constant 1 : i64
        %4 = arith.addi %2, %3 : i64
        func.return %4 : i64
    }
}