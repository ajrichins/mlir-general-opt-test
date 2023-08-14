"builtin.module"() ({
  "func.func"()  ({
  ^bb0(%arg0: i64):
    %0 = "arith.trunci"(%arg0) : (i64) -> i32
    %1 = "arith.trunci"(%0) : (i32) -> i16
    "func.return"(%1) : (i16) -> ()
  }) {function_type = (i64) -> i16, sym_name = "test_433_trunci_base"}: () -> ()
}) : () -> ()

