"builtin.module"() ({
  "func.func"()  ({
  ^bb0():
    %0 = "arith.constant"() {value = 0 : i4, kb="0000"} : () -> i4
    %1 = "arith.constant"() {value = 1 : i4, kb="0001"} : () -> i4
    %2 = "arith.addi"(%0, %1) {kb = "0001"}: (i4, i4) -> i4
    %3 = "arith.subi"(%1, %0) {kb="0001"} : (i4, i4) -> i4
    "func.return"(%3) : (i4) -> ()
  }) {function_type = () -> i4, sym_name = "test"}: () -> ()
}) : () -> ()