"builtin.module"() ({
  "func.func"() ({
  ^bb0(%arg0: i64):
    %0 = "arith.constant"() {value = 24 : i64} : () -> i64
    %1 = "arith.cmpi"(%arg0, %0) {predicate = 1 : i64} : (i64, i64) -> i1
    %2 = "arith.constant"() {value = true} : () -> i1
    %3 = "arith.xori"(%2, %1) : (i1, i1) -> i1
    "func.return"(%3) : (i1) -> ()
  }) {function_type = (i64) -> i1, sym_name = "test_opt_2762_base"} : () -> ()
}) : () -> ()

