module{
    // Opt 433 should opt to one arith.trunci %1 : i64 to i16
    func.func @test_433_trunci_base(%arg0 : i64) -> i8 { 
        %trunc1 = arith.trunci %arg0 : i64 to i32
        %trunc2 = arith.trunci %trunc1 : i32 to i8
        func.return %trunc2 : i8
    } 
}