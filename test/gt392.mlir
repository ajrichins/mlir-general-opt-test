"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: i16):
    %0 = "arith.extsi"(%arg0) : (i16) -> i32
    %1 = "arith.extsi"(%0) : (i32) -> i64
    "func.return"(%1) : (i64) -> ()
  }) {function_type = (i16) -> i64, sym_name = "test_392_trunci_base"} : () -> ()
  "func.func"() ({
    %0 = "arith.constant"() {value = 3 : i16} : () -> i16
    %1 = "arith.extsi"(%0) : (i16) -> i32
    %2 = "arith.extsi"(%1) : (i32) -> i64
    "func.return"(%2) : (i64) -> ()
  }) {function_type = () -> i64, sym_name = "test_392_trunci_constant"} : () -> ()
}) : () -> ()

