"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.subi"(%arg0, %arg1) : (i64, i64) -> i64
    %1 = "arith.addi"(%arg1, %0) : (i64, i64) -> i64
    "func.return"(%1) : (i64) -> ()
  }) {function_type = (i64, i64) -> i64, sym_name = "opt9PositiveBase"} : () -> ()
  "func.func"() ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) {function_type = (i32, i32) -> i32, sym_name = "opt9PositiveType"} : () -> ()
}) : () -> ()

