"builtin.module"() ({
  "func.func"()  ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() {value = 0 : i32} : () -> i32
    %1 = "arith.subi"(%arg0, %0) : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) {function_type = (i32) -> i32, sym_name = "test_60_base"}: () -> ()
  "func.func"()  ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() {value = 1 : i32} : () -> i32
    %1 = "arith.subi"(%arg0, %0) : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) {function_type = (i32) -> i32, sym_name = "test_60_false"}: () -> ()
}) : () -> ()

