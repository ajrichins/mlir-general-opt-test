"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.cmpi"(%arg0, %arg1) {predicate = 1 : i64} : (i64, i64) -> i1
    %1 = "arith.constant"() {value = true} : () -> i1
    %2 = "arith.xori"(%1, %0) : (i1, i1) -> i1
    "func.return"(%2) : (i1) -> ()
  }) {function_type = (i64, i64) -> i1, sym_name = "test_opt_2762_base"} : () -> ()
}) : () -> ()

