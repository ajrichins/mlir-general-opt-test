module {
    func.func @test_497_base(%arg0 : i64) -> i64 {
        %1 = arith.constant 1 : i64
        %2 = arith.addi %arg0, %1 : i64
        %4 = arith.subi %2, %1 : i64
        func.return %4 : i64
    }
    func.func @test_497_need_to_work(%arg0 : i64) -> i64 {
        %1 = arith.constant 1 : i64
        %2 = arith.addi %arg0, %1 : i64
        %3 = arith.constant 1 : i64
        %4 = arith.subi %2, %3 : i64
        func.return %4 : i64
    }
}