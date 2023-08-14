"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() {value = 4 : i32} : () -> i32
    %1 = "arith.constant"() {value = 5 : i32} : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addi"(%1, %2) : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) {function_type = (i32) -> i32, sym_name = "test_1_base"}: () -> ()
}) : () -> ()

