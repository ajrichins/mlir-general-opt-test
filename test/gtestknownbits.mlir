"builtin.module"() ({
  %0 = "arith.constant"() {value = 1 : i64} : () -> i64
  %1 = "arith.subi"(%0, %0) {knownBits = "0000"} : (i64, i64) -> i64
  %2 = "func.call"(%1) {callee = @test_kb_param} : (i64) -> i64
  "func.func"() ({
  ^bb0(%arg0: i64):
    %8 = "arith.constant"() {value = 0 : i64} : () -> i64
    %9 = "arith.muli"(%arg0, %8) : (i64, i64) -> i64
    "func.return"(%9) : (i64) -> ()
  }) {function_type = (i64) -> i64, sym_name = "test_kb_param"} : () -> ()
  %3 = "arith.constant"() {value = 0 : i64} : () -> i64
  %4 = "arith.muli"(%1, %3) : (i64, i64) -> i64
  %5 = "arith.subi"(%0, %0) {knownBits = "xxxx"} : (i64, i64) -> i64
  %6 = "func.call"(%5) {callee = @test_kb_param2} : (i64) -> i64
  "func.func"() ({
  ^bb0(%arg0: i64):
    %8 = "arith.constant"() {value = 0 : i64} : () -> i64
    %9 = "arith.muli"(%arg0, %8) : (i64, i64) -> i64
    "func.return"(%9) : (i64) -> ()
  }) {function_type = (i64) -> i64, sym_name = "test_kb_param2"} : () -> ()
  %7 = "arith.muli"(%5, %3) : (i64, i64) -> i64
}) : () -> ()

