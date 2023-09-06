"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: i64):
    %0 = "arith.constant"() {value = 1 : i64} : () -> i64
    %1 = "arith.addi"(%arg0, %0) : (i64, i64) -> i64
    %2 = "arith.subi"(%1, %0) : (i64, i64) -> i64
    "func.return"(%2) : (i64) -> ()
  }) {function_type = (i64) -> i64, sym_name = "test_497_base"} : () -> ()
  "func.func"() ({
  ^bb0(%arg0: i64):
    %0 = "arith.constant"() {value = 1 : i64} : () -> i64
    %1 = "arith.addi"(%arg0, %0) : (i64, i64) -> i64
    %2 = "arith.constant"() {value = 1 : i64} : () -> i64
    %3 = "arith.subi"(%1, %2) : (i64, i64) -> i64
    "func.return"(%3) : (i64) -> ()
  }) {function_type = (i64) -> i64, sym_name = "test_497_need_to_work"} : () -> ()
}) : () -> ()

