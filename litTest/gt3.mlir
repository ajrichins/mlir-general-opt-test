"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: i64):
    %0 = "arith.constant"() {value = 0 : i64} : () -> i64
    %1 = "arith.addi"(%arg0, %0) : (i64, i64) -> i64
    "func.return"(%1) : (i64) -> ()
  }) {function_type = (i64) -> i64, sym_name = "test3base"} : () -> ()
  "func.func"() ({
  ^bb0(%arg0: i64):
    %0 = "arith.constant"() {value = 1 : i64} : () -> i64
    %1 = "arith.addi"(%arg0, %0) : (i64, i64) -> i64
    "func.return"(%1) : (i64) -> ()
  }) {function_type = (i64) -> i64, sym_name = "test3false"} : () -> ()
  "func.func"() ({
  ^bb0(%arg0: i64):
    %0 = "arith.constant"() {value = 0 : i64} : () -> i64
    %1 = "arith.addi"(%0, %arg0) : (i64, i64) -> i64
    "func.return"(%1) : (i64) -> ()
  }) {function_type = (i64) -> i64, sym_name = "test3Com"} : () -> ()
}) : () -> ()

