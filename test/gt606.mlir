"builtin.module"() ({
  "func.func"()  ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() {value = 0 : i32} : () -> i32
    %1 = "arith.constant"() {value = 2 : i32} : () -> i32
    %2 = "arith.remsi"(%arg0, %1) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0) {predicate = 1 : i64} : (i32, i32) -> i1
    "func.return"(%3) : (i1) -> ()
  }) {function_type = (i32) -> i1, sym_name = "test_606_base"}: () -> ()
  "func.func"()  ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() {value = 2 : i32} : () -> i32
    %1 = "arith.remsi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0) {predicate = 1 : i64} : (i32, i32) -> i1
    "func.return"(%2) : (i1) -> ()
  }) {function_type = (i32) -> i1, sym_name = "test_606_false"}: () -> ()
  "func.func"()  ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() {value = 2 : i32} : () -> i32
    %1 = "arith.remsi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg1) {predicate = 1 : i64} : (i32, i32) -> i1
    "func.return"(%2) : (i1) -> ()
  }) {function_type = (i32, i32) -> i1, sym_name = "test_606_unknown"}: () -> ()
}) : () -> ()

