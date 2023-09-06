module{
    func.func @opt9PositiveBase(%arg0: i64, %arg1: i64) -> i64 {
        %0 = arith.subi %arg0, %arg1 : i64
        %1 = arith.addi %arg1, %0 : i64
        return %1 : i64
    }
    func.func @opt9PositiveType(%arg0: i32, %arg1: i32) -> i32 {
        %0 = arith.subi %arg0, %arg1 : i32
        %1 = arith.addi %arg1, %0 : i32
        return %1 : i32
    }
}