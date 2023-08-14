module{
    func.func @test_392_trunci_base(%arg0 : i16) -> i64 { 
        %1 = arith.extsi %arg0 : i16 to i32
        %2 = arith.extsi %1 : i32 to i64
        func.return %2 : i64
    } 
    func.func @test_392_trunci_constant() -> i64 { 
        %0 = arith.constant 3 : i16
        %1 = arith.extsi %0 : i16 to i32
        %2 = arith.extsi %1 : i32 to i64
        func.return %2 : i64
    } 
}