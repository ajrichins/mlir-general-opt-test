"builtin.module"() ({
  %0 = "arith.constant"() {value = 0 : i4, kb="????"} : () -> i4
  %1 = "arith.constant"() {value = 1 : i4, kb="????"} : () -> i4
  %2 = "arith.addi"(%0, %1) {kb = "????"}: (i4, i4) -> i4
  %3 = "arith.subi"(%1, %0) {kb="????"} : (i4, i4) -> i4
}) : () -> ()