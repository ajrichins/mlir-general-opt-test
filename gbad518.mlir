"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() {constantType = i64} : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.operation"(%1, %2, %0) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.result"(%5) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %7 = "pdl.operation"(%1, %6, %0) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%7) ({
      "pdl.replace"(%7, %2) {operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.operation, !pdl.value) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 100 : i16, sym_name = "opt0"} : () -> ()
}) : () -> ()

